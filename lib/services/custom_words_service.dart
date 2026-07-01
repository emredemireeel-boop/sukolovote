import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class CustomWord {
  final int id;
  final String english;
  final String turkish;
  final bool isLearned;

  CustomWord({
    required this.id,
    required this.english,
    required this.turkish,
    this.isLearned = false,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'english': english,
        'turkish': turkish,
        'isLearned': isLearned,
      };

  factory CustomWord.fromJson(Map<String, dynamic> json) => CustomWord(
        id: json['id'] as int,
        english: json['english'] as String,
        turkish: json['turkish'] as String,
        isLearned: json['isLearned'] as bool? ?? false,
      );

  CustomWord copyWith({
    int? id,
    String? english,
    String? turkish,
    bool? isLearned,
  }) =>
      CustomWord(
        id: id ?? this.id,
        english: english ?? this.english,
        turkish: turkish ?? this.turkish,
        isLearned: isLearned ?? this.isLearned,
      );
}

class CustomWordsService {
  static const String _storageKey = 'custom_words';

  static Future<List<CustomWord>> getWords() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_storageKey);
    if (jsonString == null || jsonString.isEmpty) return [];
    final List<dynamic> decoded = json.decode(jsonString) as List<dynamic>;
    return decoded
        .map((item) => CustomWord.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  static Future<void> _saveWords(List<CustomWord> words) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = json.encode(words.map((w) => w.toJson()).toList());
    await prefs.setString(_storageKey, jsonString);
  }

  static Future<List<CustomWord>> addWord(String english, String turkish) async {
    final words = await getWords();
    final newWord = CustomWord(
      id: DateTime.now().millisecondsSinceEpoch,
      english: english.trim(),
      turkish: turkish.trim(),
    );
    words.add(newWord);
    await _saveWords(words);
    return words;
  }

  static Future<List<CustomWord>> removeWord(int id) async {
    final words = await getWords();
    words.removeWhere((w) => w.id == id);
    await _saveWords(words);
    return words;
  }

  static Future<List<CustomWord>> markLearned(int id) async {
    final words = await getWords();
    final index = words.indexWhere((w) => w.id == id);
    if (index != -1) {
      words[index] = words[index].copyWith(isLearned: true);
    }
    await _saveWords(words);
    return words;
  }

  static Future<List<CustomWord>> markUnlearned(int id) async {
    final words = await getWords();
    final index = words.indexWhere((w) => w.id == id);
    if (index != -1) {
      words[index] = words[index].copyWith(isLearned: false);
    }
    await _saveWords(words);
    return words;
  }

  static Future<List<CustomWord>> getUnlearnedWords() async {
    final words = await getWords();
    return words.where((w) => !w.isLearned).toList();
  }
}
