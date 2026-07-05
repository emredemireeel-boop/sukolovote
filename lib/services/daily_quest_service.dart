import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class DailyQuest {
  final String id;
  final String title;
  final String description;
  final int target;
  final int current;
  final int rewardXp;
  final String icon;

  bool get isCompleted => current >= target;

  const DailyQuest({
    required this.id,
    required this.title,
    required this.description,
    required this.target,
    required this.current,
    required this.rewardXp,
    required this.icon,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'target': target,
        'current': current,
        'rewardXp': rewardXp,
        'icon': icon,
      };

  factory DailyQuest.fromJson(Map<String, dynamic> json) => DailyQuest(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        target: json['target'],
        current: json['current'],
        rewardXp: json['rewardXp'],
        icon: json['icon'],
      );

  DailyQuest copyWith({int? current}) {
    return DailyQuest(
      id: id,
      title: title,
      description: description,
      target: target,
      current: current ?? this.current,
      rewardXp: rewardXp,
      icon: icon,
    );
  }
}

class DailyQuestService {
  static const _keyPrefix = 'quests_';
  static const _keyDate = '${_keyPrefix}date';
  static const _keyQuests = '${_keyPrefix}data';
  static SharedPreferences? _prefs;

  static Future<void> _ensureInit() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  static String _todayString() {
    final now = DateTime.now();
    return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
  }

  static final List<DailyQuest> _baseQuests = [
    const DailyQuest(
      id: 'q_questions_10',
      title: '10 Soru Çöz',
      description: 'Herhangi bir kategoriden 10 soru çöz.',
      target: 10,
      current: 0,
      rewardXp: 50,
      icon: '🎯',
    ),
    const DailyQuest(
      id: 'q_sr_review_20',
      title: 'Kelimeleri Tekrar Et',
      description: 'Aralıklı tekrar sisteminde 20 kelime tekrarla.',
      target: 20,
      current: 0,
      rewardXp: 75,
      icon: '🔄',
    ),
    const DailyQuest(
      id: 'q_games_1',
      title: 'Beyin Egzersizi',
      description: 'Hafıza eşleştirme oyununu 1 kez tamamla.',
      target: 1,
      current: 0,
      rewardXp: 30,
      icon: '🧩',
    ),
  ];

  static Future<List<DailyQuest>> getTodayQuests() async {
    await _ensureInit();
    final today = _todayString();
    final savedDate = _prefs!.getString(_keyDate);

    if (savedDate != today) {
      // Yeni gün, görevleri sıfırla
      await _saveQuests(_baseQuests);
      await _prefs!.setString(_keyDate, today);
      return _baseQuests;
    }

    final dataStr = _prefs!.getString(_keyQuests);
    if (dataStr == null) {
      await _saveQuests(_baseQuests);
      return _baseQuests;
    }

    try {
      final List<dynamic> list = json.decode(dataStr);
      return list.map((e) => DailyQuest.fromJson(e)).toList();
    } catch (e) {
      return _baseQuests;
    }
  }

  static Future<void> _saveQuests(List<DailyQuest> quests) async {
    await _ensureInit();
    final list = quests.map((q) => q.toJson()).toList();
    await _prefs!.setString(_keyQuests, json.encode(list));
  }

  static Future<void> progressQuest(String questId, int amount) async {
    final quests = await getTodayQuests();
    final index = quests.indexWhere((q) => q.id == questId);
    if (index != -1) {
      final quest = quests[index];
      if (quest.isCompleted) return; // Zaten tamamlanmış

      final newCurrent = (quest.current + amount).clamp(0, quest.target);
      quests[index] = quest.copyWith(current: newCurrent);
      await _saveQuests(quests);
    }
  }
}
