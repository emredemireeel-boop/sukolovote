import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import '../data/vocab_pool_data.dart';

class OxfordService {
  static const String _dbUrl = 'https://raw.githubusercontent.com/ibrahimaykutbas/the-oxford-dictionary/master/db.json';

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

  static Future<List<VocabWord>> fetchOxford3000() async {
    try {
      final response = await http.get(Uri.parse(_dbUrl));
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        List<VocabWord> words = [];
        
        data.forEach((letter, list) {
          if (list is List) {
            for (var item in list) {
              final eng = item['english']?.toString().trim() ?? '';
              final turk = item['turkish']?.toString().trim() ?? '';
              
              if (eng.isNotEmpty && turk.isNotEmpty) {
                // Randomly assign to B1 or B2 to match YÖKDİL categories
                final category = Random().nextDouble() > 0.4 ? 'Oxford B1 Seviyesi' : 'Oxford B2 Seviyesi';
                
                words.add(VocabWord(
                  english: eng,
                  turkish: turk,
                  category: category,
                  example: _generateMedicalExample(eng),
                  synonyms: [],
                  collocations: [],
                ));
              }
            }
          }
        });
        return words;
      }
    } catch (e) {
      print('Failed to load Oxford 3000: $e');
    }
    return [];
  }
}
