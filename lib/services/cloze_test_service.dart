import 'package:shared_preferences/shared_preferences.dart';

class ClozeTestService {
  static const _keyCompleted = 'cloze_completed_titles';
  static SharedPreferences? _prefs;

  static Future<void> _ensureInit() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  static Future<List<String>> getCompletedPassages() async {
    await _ensureInit();
    return _prefs!.getStringList(_keyCompleted) ?? [];
  }

  static Future<void> markAsCompleted(String title) async {
    await _ensureInit();
    final completed = _prefs!.getStringList(_keyCompleted) ?? [];
    if (!completed.contains(title)) {
      completed.add(title);
      await _prefs!.setStringList(_keyCompleted, completed);
    }
  }

  static Future<void> resetProgress() async {
    await _ensureInit();
    await _prefs!.remove(_keyCompleted);
  }
}
