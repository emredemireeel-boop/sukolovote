import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

/// Kullanıcının tüm çalışma istatistiklerini takip eden servis.
/// SharedPreferences tabanlı — offline, hızlı, güvenilir.
class StudyStatsService {
  static const _keyPrefix = 'study_stats_';
  static const _keyStreak = '${_keyPrefix}streak';
  static const _keyLastStudyDate = '${_keyPrefix}last_study_date';
  static const _keyTotalQuestions = '${_keyPrefix}total_questions';
  static const _keyTotalCorrect = '${_keyPrefix}total_correct';
  static const _keyTotalWrong = '${_keyPrefix}total_wrong';
  static const _keyCategoryStats = '${_keyPrefix}category_stats';
  static const _keyDailyQuestions = '${_keyPrefix}daily_questions';
  static const _keyTotalStudyDays = '${_keyPrefix}total_study_days';
  static const _keyXP = '${_keyPrefix}xp';
  static const _keyLevel = '${_keyPrefix}level';
  static const _keyArticlesRead = '${_keyPrefix}articles_read';
  static const _keyWordsLearned = '${_keyPrefix}words_learned';

  static SharedPreferences? _prefs;

  static Future<void> _ensureInit() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  // ─── STREAK ──────────────────────────────────────────

  /// Bugün çalışma yaptığını kaydeder ve streak günceller.
  static Future<void> recordStudyToday() async {
    await _ensureInit();
    final today = _todayString();
    final lastDate = _prefs!.getString(_keyLastStudyDate) ?? '';

    if (lastDate == today) return; // Zaten bugün kaydedilmiş

    final yesterday = _dateString(DateTime.now().subtract(const Duration(days: 1)));
    int streak = _prefs!.getInt(_keyStreak) ?? 0;

    if (lastDate == yesterday) {
      streak++; // Üst üste devam
    } else if (lastDate != today) {
      streak = 1; // Streak kırıldı, yeniden başla
    }

    await _prefs!.setInt(_keyStreak, streak);
    await _prefs!.setString(_keyLastStudyDate, today);

    int totalDays = _prefs!.getInt(_keyTotalStudyDays) ?? 0;
    await _prefs!.setInt(_keyTotalStudyDays, totalDays + 1);
  }

  static Future<int> getStreak() async {
    await _ensureInit();
    final lastDate = _prefs!.getString(_keyLastStudyDate) ?? '';
    final today = _todayString();
    final yesterday = _dateString(DateTime.now().subtract(const Duration(days: 1)));

    // Streak geçerli mi kontrol et
    if (lastDate != today && lastDate != yesterday) {
      return 0; // Streak kırılmış
    }
    return _prefs!.getInt(_keyStreak) ?? 0;
  }

  // ─── SORU İSTATİSTİKLERİ ────────────────────────────

  /// Bir soru çözüldüğünde çağrılır.
  static Future<void> recordQuestion({
    required String category,
    required bool isCorrect,
  }) async {
    await _ensureInit();
    await recordStudyToday();

    // Toplam
    int total = _prefs!.getInt(_keyTotalQuestions) ?? 0;
    await _prefs!.setInt(_keyTotalQuestions, total + 1);

    if (isCorrect) {
      int correct = _prefs!.getInt(_keyTotalCorrect) ?? 0;
      await _prefs!.setInt(_keyTotalCorrect, correct + 1);
    } else {
      int wrong = _prefs!.getInt(_keyTotalWrong) ?? 0;
      await _prefs!.setInt(_keyTotalWrong, wrong + 1);
    }

    // Kategori bazlı
    Map<String, dynamic> catStats = _getCategoryStats();
    if (!catStats.containsKey(category)) {
      catStats[category] = {'correct': 0, 'wrong': 0};
    }
    if (isCorrect) {
      catStats[category]['correct'] = (catStats[category]['correct'] ?? 0) + 1;
    } else {
      catStats[category]['wrong'] = (catStats[category]['wrong'] ?? 0) + 1;
    }
    await _prefs!.setString(_keyCategoryStats, jsonEncode(catStats));

    // Günlük soru sayısı
    final todayKey = '${_keyDailyQuestions}_${_todayString()}';
    int dailyCount = _prefs!.getInt(todayKey) ?? 0;
    await _prefs!.setInt(todayKey, dailyCount + 1);

    // XP kazan
    await _addXP(isCorrect ? 10 : 3);
  }

  /// Makale okunduğunda çağrılır.
  static Future<void> recordArticleRead() async {
    await _ensureInit();
    await recordStudyToday();
    int count = _prefs!.getInt(_keyArticlesRead) ?? 0;
    await _prefs!.setInt(_keyArticlesRead, count + 1);
    await _addXP(15);
  }

  /// Kelime öğrenildiğinde çağrılır.
  static Future<void> recordWordLearned() async {
    await _ensureInit();
    int count = _prefs!.getInt(_keyWordsLearned) ?? 0;
    await _prefs!.setInt(_keyWordsLearned, count + 1);
    await _addXP(5);
  }

  // ─── GETTERs ─────────────────────────────────────────

  static Future<int> getTotalQuestions() async {
    await _ensureInit();
    return _prefs!.getInt(_keyTotalQuestions) ?? 0;
  }

  static Future<int> getTotalCorrect() async {
    await _ensureInit();
    return _prefs!.getInt(_keyTotalCorrect) ?? 0;
  }

  static Future<int> getTotalWrong() async {
    await _ensureInit();
    return _prefs!.getInt(_keyTotalWrong) ?? 0;
  }

  static Future<int> getArticlesRead() async {
    await _ensureInit();
    return _prefs!.getInt(_keyArticlesRead) ?? 0;
  }

  static Future<int> getWordsLearned() async {
    await _ensureInit();
    return _prefs!.getInt(_keyWordsLearned) ?? 0;
  }

  static Future<int> getTotalStudyDays() async {
    await _ensureInit();
    return _prefs!.getInt(_keyTotalStudyDays) ?? 0;
  }

  static Future<int> getDailyQuestionCount() async {
    await _ensureInit();
    final todayKey = '${_keyDailyQuestions}_${_todayString()}';
    return _prefs!.getInt(todayKey) ?? 0;
  }

  /// Son 7 günün soru sayıları.
  static Future<List<int>> getWeeklyQuestions() async {
    await _ensureInit();
    List<int> weekly = [];
    for (int i = 6; i >= 0; i--) {
      final date = _dateString(DateTime.now().subtract(Duration(days: i)));
      final key = '${_keyDailyQuestions}_$date';
      weekly.add(_prefs!.getInt(key) ?? 0);
    }
    return weekly;
  }

  /// Kategori bazlı istatistikler.
  static Future<Map<String, Map<String, int>>> getCategoryStatsMap() async {
    await _ensureInit();
    final raw = _getCategoryStats();
    return raw.map((key, value) => MapEntry(
      key,
      {
        'correct': (value['correct'] as num?)?.toInt() ?? 0,
        'wrong': (value['wrong'] as num?)?.toInt() ?? 0,
      },
    ));
  }

  /// Başarı yüzdesi döndürür.
  static Future<double> getSuccessRate() async {
    final total = await getTotalQuestions();
    final correct = await getTotalCorrect();
    if (total == 0) return 0;
    return (correct / total) * 100;
  }

  /// En zayıf kategoriyi döndürür.
  static Future<String?> getWeakestCategory() async {
    final stats = await getCategoryStatsMap();
    if (stats.isEmpty) return null;

    String? weakest;
    double lowestRate = 100;

    for (final entry in stats.entries) {
      final total = (entry.value['correct'] ?? 0) + (entry.value['wrong'] ?? 0);
      if (total < 3) continue; // Minimum 3 soru çözülmüş olsun
      final rate = (entry.value['correct'] ?? 0) / total * 100;
      if (rate < lowestRate) {
        lowestRate = rate;
        weakest = entry.key;
      }
    }
    return weakest;
  }

  // ─── XP & LEVEL ─────────────────────────────────────

  static Future<void> _addXP(int amount) async {
    int xp = _prefs!.getInt(_keyXP) ?? 0;
    xp += amount;

    // Level hesapla (her 100 XP = 1 level)
    int level = (xp / 100).floor() + 1;

    await _prefs!.setInt(_keyXP, xp);
    await _prefs!.setInt(_keyLevel, level);
  }

  static Future<int> getXP() async {
    await _ensureInit();
    return _prefs!.getInt(_keyXP) ?? 0;
  }

  static Future<int> getLevel() async {
    await _ensureInit();
    return _prefs!.getInt(_keyLevel) ?? 1;
  }

  /// Mevcut level'deki XP ilerleme yüzdesi (0.0 - 1.0).
  static Future<double> getLevelProgress() async {
    final xp = await getXP();
    return (xp % 100) / 100;
  }

  // ─── YARDIMCI ────────────────────────────────────────

  static Map<String, dynamic> _getCategoryStats() {
    final raw = _prefs!.getString(_keyCategoryStats);
    if (raw == null) return {};
    try {
      return jsonDecode(raw) as Map<String, dynamic>;
    } catch (_) {
      return {};
    }
  }

  static String _todayString() => _dateString(DateTime.now());

  static String _dateString(DateTime dt) =>
      '${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')}';
}
