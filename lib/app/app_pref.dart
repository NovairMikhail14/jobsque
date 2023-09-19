import 'package:jobsque/resources/language_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String PREFS_KEY_LANG = "PREFS_KEY_LANG";
const String PREFS_KEY_ONBOARDING_SCREEN = "PREFS_KEY_ONBOARDING_SCREEN_VIEWED";
const String PREFS_KEY_IS_LOGGED_IN = "PREFS_KEY_IS_LOGGED_IN";

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.english.getValue();
    }
  }
  Future<void> setAppOnBoardingViewed() async {
    _sharedPreferences.setBool(PREFS_KEY_ONBOARDING_SCREEN,true);
  }
  Future<bool> isAppOnBoardingViewed() async {
  return _sharedPreferences.getBool(PREFS_KEY_ONBOARDING_SCREEN)??false;
  }
  Future<void> setAppLoggedIn() async {
    _sharedPreferences.setBool(PREFS_KEY_IS_LOGGED_IN,true);
  }
  Future<bool> isLoggedIn() async {
    return _sharedPreferences.getBool(PREFS_KEY_IS_LOGGED_IN) ?? false;
  }
}
