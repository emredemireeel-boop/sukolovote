import 'dart:io';
import 'dart:convert';

void main() {
  final file = File('C:\\Users\\GAMER\\Desktop\\sukoyok\\assets\\oxford3000.json');
  try {
    final text = file.readAsStringSync();
    final jsonList = jsonDecode(text) as List;
    print('oxford3000.json is valid. Contains ${jsonList.length} items.');
  } catch (e) {
    print('oxford3000.json INVALID: \$e');
  }

  final file2 = File('C:\\Users\\GAMER\\Desktop\\sukoyok\\assets\\health_terms.json');
  try {
    final text = file2.readAsStringSync();
    final jsonList = jsonDecode(text) as List;
    print('health_terms.json is valid. Contains ${jsonList.length} items.');
  } catch (e) {
    print('health_terms.json INVALID: \$e');
  }
}
