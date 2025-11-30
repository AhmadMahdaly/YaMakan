import 'package:shared_preferences/shared_preferences.dart';
import 'package:yamakan/core/cache_helper/cache_values.dart';

class CacheHelper {
  CacheHelper._();

  static SharedPreferences? _sharedPreferences;
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static void _checkInstance() {
    if (_sharedPreferences == null) {
      throw Exception(
        'CacheHelper not initialized. Call CacheHelper.init() in your main.dart',
      );
    }
  }

  /// --- Language Management ---

  static Future<void> setLanguage(String langCode) async {
    await set(CacheKeys.currentLanguage, langCode);
  }

  static String getLanguage() {
    return get<String>(CacheKeys.currentLanguage) ?? 'en';
  }

  static bool isEnglish() => getLanguage() == 'en';

  /// --- Generic SharedPreferences Methods ---

  static Future<bool> set(String key, dynamic value) async {
    _checkInstance();
    if (value is String) return _sharedPreferences!.setString(key, value);
    if (value is int) return _sharedPreferences!.setInt(key, value);
    if (value is bool) return _sharedPreferences!.setBool(key, value);
    if (value is double) return _sharedPreferences!.setDouble(key, value);
    return false; // نوع غير مدعوم
  }

  static T? get<T>(String key) {
    _checkInstance();
    try {
      return _sharedPreferences!.get(key) as T?;
    } catch (e) {
      return null;
    }
  }

  static Future<bool> remove(String key) async {
    _checkInstance();
    return _sharedPreferences!.remove(key);
  }

  static Future<bool> clear() async {
    _checkInstance();
    return _sharedPreferences!.clear();
  }
}
