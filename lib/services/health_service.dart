import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../data/health_terms_data.dart';

class HealthService {
  static const String _assetPath = 'assets/health_terms.json';
  static List<HealthTerm>? _cache;

  static Future<List<HealthTerm>> fetchHealthTerms() async {
    if (_cache != null) return _cache!;
    try {
      var raw = await rootBundle.loadString(_assetPath);
      if (raw.startsWith('\uFEFF')) {
        raw = raw.substring(1);
      }
      final List<dynamic> data = json.decode(raw) as List<dynamic>;
      final terms = <HealthTerm>[];
      for (final item in data) {
        final eng = (item['e']?.toString() ?? '').trim();
        final turk = (item['t']?.toString() ?? '').trim();
        final cat = (item['c']?.toString() ?? 'Genel Tıp').trim();
        final ex = (item['x']?.toString() ?? '').trim();
        if (eng.isEmpty || turk.isEmpty) continue;
        
        terms.add(HealthTerm(
          english: eng,
          turkish: turk,
          category: cat,
          example: ex.isNotEmpty ? ex : null,
        ));
      }
      _cache = terms;
      return terms;
    } catch (e) {
      return healthTerms; // Hata olursa hardcoded listeyi don
    }
  }
}
