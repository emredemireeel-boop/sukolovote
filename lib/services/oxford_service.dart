import 'dart:convert';
import 'dart:math';
import 'package:flutter/services.dart' show rootBundle;
import '../data/vocab_pool_data.dart';

/// Oxford 3000 kelimeleri artık uygulamaya gömülü (offline) olarak gelir.
/// Kaynak: assets/oxford3000.json  →  [{ "e": english, "l": CEFR, "t": turkish }]
class OxfordService {
  static const String _assetPath = 'assets/oxford3000.json';

  // Bir kez yükleyip önbelleğe al
  static List<VocabWord>? _cache;

  static String _generateMedicalExample(String word) {
    final templates = [
      "The patient's condition was assessed in terms of $word.",
      "Recent medical studies focus heavily on the impact of $word.",
      "Doctors must carefully monitor the $word during the treatment.",
      "An accurate understanding of $word is crucial for diagnosis.",
      "Clinical trials have shown that $word plays a vital role in recovery.",
      "The new therapy aims to target $word effectively.",
      "It is important to evaluate $word before prescribing medication.",
      "The risk of $word increases with age and underlying conditions.",
      "Researchers discovered a correlation between $word and the disease.",
    ];
    return templates[Random().nextInt(templates.length)];
  }

  static String _categoryForLevel(String level) {
    switch (level.toUpperCase()) {
      case 'A1':
        return 'Oxford A1 Seviyesi';
      case 'A2':
        return 'Oxford A2 Seviyesi';
      case 'B1':
        return 'Oxford B1 Seviyesi';
      case 'B2':
        return 'Oxford B2 Seviyesi';
      default:
        return 'Oxford B1 Seviyesi';
    }
  }

  /// Tüm Oxford 3000 kelimelerini yerel asset'ten yükler.
  static Future<List<VocabWord>> fetchOxford3000() async {
    if (_cache != null) return _cache!;
    try {
      var raw = await rootBundle.loadString(_assetPath);
      // BOM karakterini temizle (UTF-8 BOM: \uFEFF)
      if (raw.startsWith('\uFEFF')) {
        raw = raw.substring(1);
      }
      final List<dynamic> data = json.decode(raw) as List<dynamic>;
      final words = <VocabWord>[];
      for (final item in data) {
        final eng = (item['e']?.toString() ?? '').trim();
        final turk = (item['t']?.toString() ?? '').trim();
        final level = (item['l']?.toString() ?? 'B1').trim();
        if (eng.isEmpty || turk.isEmpty) continue;
        final example = (item['x']?.toString() ?? '').trim();
        words.add(VocabWord(
          english: eng,
          turkish: turk,
          category: _categoryForLevel(level),
          example: example.isNotEmpty ? example : _generateMedicalExample(eng),
          synonyms: const [],
          collocations: const [],
        ));
      }
      _cache = words;
      return words;
    } catch (e) {
      return const [];
    }
  }
}
