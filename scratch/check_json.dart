import 'dart:io';

void main() {
  final file = File('C:\\Users\\GAMER\\Desktop\\sukoyok\\assets\\oxford3000.json');
  final text = file.readAsStringSync();
  final last50 = text.length > 100 ? text.substring(text.length - 100) : text;
  File('C:\\Users\\GAMER\\Desktop\\sukoyok\\scratch\\json_end.txt').writeAsStringSync('LENGTH: ${text.length}\nEND: $last50');
}
