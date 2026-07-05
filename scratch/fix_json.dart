import 'dart:io';

void main() {
  final path = 'C:\\Users\\GAMER\\Desktop\\sukoyok\\assets\\oxford3000.json';
  final file = File(path);
  String text = file.readAsStringSync();
  
  text = text.trim();
  if (!text.endsWith(']')) {
    // Bulunan son '}' karakterini bulalım
    int lastBrace = text.lastIndexOf('}');
    if (lastBrace != -1) {
      text = text.substring(0, lastBrace + 1) + ']';
      file.writeAsStringSync(text);
      print('Fixed oxford3000.json');
    }
  } else {
    print('oxford3000.json is already fine');
  }

  final path2 = 'C:\\Users\\GAMER\\Desktop\\sukoyok\\assets\\health_terms.json';
  final file2 = File(path2);
  String text2 = file2.readAsStringSync();
  
  text2 = text2.trim();
  if (!text2.endsWith(']')) {
    int lastBrace = text2.lastIndexOf('}');
    if (lastBrace != -1) {
      text2 = text2.substring(0, lastBrace + 1) + ']';
      file2.writeAsStringSync(text2);
      print('Fixed health_terms.json');
    }
  } else {
    print('health_terms.json is already fine');
  }
}
