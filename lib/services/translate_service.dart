import 'dart:convert';
import 'package:http/http.dart' as http;

class TranslateService {
  static final Map<String, String> _cache = {};

  static Future<String> translateWord(String word) async {
    final lowerWord = word.toLowerCase().trim();
    if (_cache.containsKey(lowerWord)) {
      return _cache[lowerWord]!;
    }

    try {
      final url = Uri.parse(
          'https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=tr&dt=t&q=$lowerWord');
      final response = await http.get(url).timeout(const Duration(seconds: 5));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final translatedText = data[0][0][0].toString();
        _cache[lowerWord] = translatedText;
        return translatedText;
      }
    } catch (e) {
      // Ignored, return fallback below
    }

    return 'Çeviri bulunamadı';
  }

  static Future<String> translatePhrase(String phrase) async {
    final trimmed = phrase.trim();
    if (trimmed.isEmpty) return '';
    if (_cache.containsKey(trimmed.toLowerCase())) {
      return _cache[trimmed.toLowerCase()]!;
    }

    try {
      final url = Uri.parse(
          'https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=tr&dt=t&q=${Uri.encodeComponent(trimmed)}');
      final response = await http.get(url).timeout(const Duration(seconds: 5));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final buffer = StringBuffer();
        for (final segment in data[0]) {
          if (segment != null && segment[0] != null) {
            buffer.write(segment[0].toString());
          }
        }
        final result = buffer.toString();
        _cache[trimmed.toLowerCase()] = result;
        return result;
      }
    } catch (e) {
      // Ignored
    }

    return 'Çeviri bulunamadı';
  }
}
