import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static void setIsFirstTime() async {
    await _prefs.setBool('isFirst', false);
  }

  static void get getIsNotFirstTime {
    _prefs.getBool('isFirst') ?? true;
  }

  static String get token {
    return _prefs.getString('token') ?? '';
  }

  static Future<void> saveData() async {}

  static void logOut() {
    _prefs.remove('');
  }
}
