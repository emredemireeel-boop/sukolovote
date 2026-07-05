import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

/// Yanlış yapılan soruları kaydedip tekrar çözdüren servis.
class MistakeService {
  static const _keyMistakes = 'mistake_tracker_list';
  static SharedPreferences? _prefs;

  static Future<void> _ensureInit() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  /// Yanlış yapılan soruyu kaydeder.
  static Future<void> recordMistake({
    required String question,
    required List<String> options,
    required int correctIndex,
    required int selectedIndex,
    required String explanation,
    required String category,
    String? passage,
  }) async {
    await _ensureInit();
    final mistakes = await getMistakes();

    // Aynı soru zaten varsa ekleme
    if (mistakes.any((m) => m.question == question)) return;

    mistakes.add(MistakeItem(
      question: question,
      options: options,
      correctIndex: correctIndex,
      selectedIndex: selectedIndex,
      explanation: explanation,
      category: category,
      passage: passage,
      timestamp: DateTime.now().toIso8601String(),
      retryCount: 0,
      resolved: false,
    ));

    await _saveMistakes(mistakes);
  }

  /// Tüm hataları döndürür.
  static Future<List<MistakeItem>> getMistakes() async {
    await _ensureInit();
    final raw = _prefs!.getString(_keyMistakes);
    if (raw == null) return [];
    try {
      final list = jsonDecode(raw) as List;
      return list.map((e) => MistakeItem.fromJson(e as Map<String, dynamic>)).toList();
    } catch (_) {
      return [];
    }
  }

  /// Belirli kategoriye ait hataları döndürür.
  static Future<List<MistakeItem>> getMistakesByCategory(String category) async {
    final all = await getMistakes();
    return all.where((m) => m.category == category).toList();
  }

  /// Çözülmemiş hataları döndürür.
  static Future<List<MistakeItem>> getUnresolvedMistakes() async {
    final all = await getMistakes();
    return all.where((m) => !m.resolved).toList();
  }

  /// Hata "çözüldü" olarak işaretler (tekrar doğru cevapladığında).
  static Future<void> markResolved(String question) async {
    final mistakes = await getMistakes();
    final index = mistakes.indexWhere((m) => m.question == question);
    if (index != -1) {
      mistakes[index] = mistakes[index].copyWith(resolved: true);
      await _saveMistakes(mistakes);
    }
  }

  /// Tekrar deneme sayısını artırır.
  static Future<void> incrementRetry(String question) async {
    final mistakes = await getMistakes();
    final index = mistakes.indexWhere((m) => m.question == question);
    if (index != -1) {
      mistakes[index] = mistakes[index].copyWith(
        retryCount: mistakes[index].retryCount + 1,
      );
      await _saveMistakes(mistakes);
    }
  }

  /// Bir hatayı siler.
  static Future<void> deleteMistake(String question) async {
    final mistakes = await getMistakes();
    mistakes.removeWhere((m) => m.question == question);
    await _saveMistakes(mistakes);
  }

  /// Tüm hataları siler.
  static Future<void> clearAll() async {
    await _ensureInit();
    await _prefs!.remove(_keyMistakes);
  }

  /// Kategori bazlı hata sayıları.
  static Future<Map<String, int>> getCategoryCounts() async {
    final all = await getMistakes();
    final counts = <String, int>{};
    for (final m in all) {
      counts[m.category] = (counts[m.category] ?? 0) + 1;
    }
    return counts;
  }

  /// Toplam hata sayısı.
  static Future<int> getTotalCount() async {
    final all = await getMistakes();
    return all.length;
  }

  static Future<void> _saveMistakes(List<MistakeItem> mistakes) async {
    await _prefs!.setString(
      _keyMistakes,
      jsonEncode(mistakes.map((m) => m.toJson()).toList()),
    );
  }
}

class MistakeItem {
  final String question;
  final List<String> options;
  final int correctIndex;
  final int selectedIndex;
  final String explanation;
  final String category;
  final String? passage;
  final String timestamp;
  final int retryCount;
  final bool resolved;

  const MistakeItem({
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.selectedIndex,
    required this.explanation,
    required this.category,
    this.passage,
    required this.timestamp,
    required this.retryCount,
    required this.resolved,
  });

  MistakeItem copyWith({
    int? retryCount,
    bool? resolved,
  }) {
    return MistakeItem(
      question: question,
      options: options,
      correctIndex: correctIndex,
      selectedIndex: selectedIndex,
      explanation: explanation,
      category: category,
      passage: passage,
      timestamp: timestamp,
      retryCount: retryCount ?? this.retryCount,
      resolved: resolved ?? this.resolved,
    );
  }

  Map<String, dynamic> toJson() => {
    'question': question,
    'options': options,
    'correctIndex': correctIndex,
    'selectedIndex': selectedIndex,
    'explanation': explanation,
    'category': category,
    'passage': passage,
    'timestamp': timestamp,
    'retryCount': retryCount,
    'resolved': resolved,
  };

  factory MistakeItem.fromJson(Map<String, dynamic> json) => MistakeItem(
    question: json['question'] as String,
    options: (json['options'] as List).cast<String>(),
    correctIndex: json['correctIndex'] as int,
    selectedIndex: json['selectedIndex'] as int,
    explanation: json['explanation'] as String,
    category: json['category'] as String,
    passage: json['passage'] as String?,
    timestamp: json['timestamp'] as String,
    retryCount: json['retryCount'] as int? ?? 0,
    resolved: json['resolved'] as bool? ?? false,
  );
}
