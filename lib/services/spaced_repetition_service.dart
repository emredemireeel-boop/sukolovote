import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SRItem {
  final String word;
  final int box; // 1 to 5
  final DateTime nextReviewDate;

  SRItem({
    required this.word,
    required this.box,
    required this.nextReviewDate,
  });

  Map<String, dynamic> toJson() => {
        'word': word,
        'box': box,
        'nextReviewDate': nextReviewDate.toIso8601String(),
      };

  factory SRItem.fromJson(Map<String, dynamic> json) {
    return SRItem(
      word: json['word'],
      box: json['box'],
      nextReviewDate: DateTime.parse(json['nextReviewDate']),
    );
  }
}

class SpacedRepetitionService {
  static const String _key = 'sr_data_v1';
  static SharedPreferences? _prefs;

  static Future<void> _ensureInit() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  // Tüm kayıtlı verileri getirir
  static Future<Map<String, SRItem>> _getAllData() async {
    await _ensureInit();
    final String? dataStr = _prefs!.getString(_key);
    if (dataStr == null) return {};

    try {
      final Map<String, dynamic> map = json.decode(dataStr);
      final Map<String, SRItem> result = {};
      map.forEach((key, value) {
        result[key] = SRItem.fromJson(value);
      });
      return result;
    } catch (e) {
      return {};
    }
  }

  static Future<void> _saveAllData(Map<String, SRItem> data) async {
    await _ensureInit();
    final map = data.map((key, value) => MapEntry(key, value.toJson()));
    await _prefs!.setString(_key, json.encode(map));
  }

  // Bugüne ait tekrar edilmesi gereken kelimelerin listesini (string) döner
  static Future<List<String>> getDueWords() async {
    final data = await _getAllData();
    final now = DateTime.now();
    
    // Yalnızca kutu 5'ten küçük olan (henüz tamamen ezberlenmemiş) 
    // ve tarihi gelmiş kelimeler.
    return data.values
        .where((item) => item.box < 5 && item.nextReviewDate.isBefore(now))
        .map((item) => item.word)
        .toList();
  }

  // Öğrenilmiş (Box 5) kelimeleri getirir
  static Future<List<String>> getMasteredWords() async {
    final data = await _getAllData();
    return data.values
        .where((item) => item.box == 5)
        .map((item) => item.word)
        .toList();
  }

  // Öğrenilmekte olan (Box 1,2,3,4) kelimeleri getirir
  static Future<List<String>> getLearningWords() async {
    final data = await _getAllData();
    return data.values
        .where((item) => item.box < 5)
        .map((item) => item.word)
        .toList();
  }

  // Yeni bir kelimeyi SR sistemine ekler
  static Future<void> addWord(String word) async {
    final data = await _getAllData();
    if (data.containsKey(word)) return; // Zaten varsa atla

    data[word] = SRItem(
      word: word,
      box: 1,
      nextReviewDate: DateTime.now(), // Hemen tekrar listesine düşer
    );
    await _saveAllData(data);
  }

  // Kullanıcı kelimeyi doğru (easy/good) bildiğinde çağrılır
  static Future<void> markCorrect(String word) async {
    final data = await _getAllData();
    final item = data[word] ?? SRItem(word: word, box: 0, nextReviewDate: DateTime.now());
    
    int nextBox = item.box + 1;
    if (nextBox > 5) nextBox = 5;

    int delayDays = 1;
    switch (nextBox) {
      case 1: delayDays = 1; break;
      case 2: delayDays = 2; break;
      case 3: delayDays = 4; break;
      case 4: delayDays = 7; break;
      case 5: delayDays = 30; break; // Box 5 is virtually mastered
    }

    // Bugünü baz alarak hesapla
    final now = DateTime.now();
    // Gece yarısı hesaplaması için (saati sıfırlayarak) ertesi güne temiz geçiş
    final nextDate = DateTime(now.year, now.month, now.day).add(Duration(days: delayDays, hours: 4)); // Sabah 4'te aktif olsun

    data[word] = SRItem(
      word: word,
      box: nextBox,
      nextReviewDate: nextDate,
    );

    await _saveAllData(data);
  }

  // Kullanıcı kelimeyi yanlış (hard/again) bildiğinde çağrılır
  static Future<void> markIncorrect(String word) async {
    final data = await _getAllData();
    
    // Yanlış bilinirse direkt Kutu 1'e düşer ve hemen tekrar edilir (bugün)
    data[word] = SRItem(
      word: word,
      box: 1,
      nextReviewDate: DateTime.now(),
    );

    await _saveAllData(data);
  }

  // İstatistikler için her kutudaki kelime sayısını döner
  static Future<Map<int, int>> getBoxCounts() async {
    final data = await _getAllData();
    Map<int, int> counts = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0};
    for (var item in data.values) {
      if (counts.containsKey(item.box)) {
        counts[item.box] = counts[item.box]! + 1;
      }
    }
    return counts;
  }
}
