import 'package:jobsque/resources/language_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String PREFS_KEY_LANG = "PREFS_KEY_LANG";
const String PREFS_KEY_ONBOARDING_SCREEN = "PREFS_KEY_ONBOARDING_SCREEN_VIEWED";
const String PREFS_KEY_IS_LOGGED_IN = "PREFS_KEY_IS_LOGGED_IN";
const String PREFS_KEY_TOKEN = "PREFS_KEY_TOKEN";

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
  Future<void> setAppToken(String token) async {
    _sharedPreferences.setString(PREFS_KEY_TOKEN,token);
  }

  Future<String?> getAppToken() async {
   return _sharedPreferences.getString(PREFS_KEY_TOKEN);
  }

  Future<bool> isLoggedIn() async {
    return _sharedPreferences.getBool(PREFS_KEY_IS_LOGGED_IN) ?? false;
  }
  Future<void> setnotfJobAlert(bool value) async {
    _sharedPreferences.setBool("notfJobAlert",value);
  }
  bool? getnotfJobAlert()   {
    return _sharedPreferences.getBool("notfJobAlert")?? false;
  }
  Future<void> setnotfJobUpdate(bool value) async {
    _sharedPreferences.setBool("notfJobUpdate",value);
  }
  bool? getnotfJobUpdate( )  {
    return _sharedPreferences.getBool("notfJobUpdate")?? false;
  }
  Future<void> setnotfJobReminders(bool value) async {
    _sharedPreferences.setBool("notfJobReminders",value);
  }
  bool? getnotfJobReminders( )  {
    return _sharedPreferences.getBool("notfJobReminders")?? false;
  }
  Future<void> setnotfJobInterested(bool value) async {
    _sharedPreferences.setBool("notfJobInterested",value);
  }
  bool? getnotfJobInterested( )  {
    return _sharedPreferences.getBool("notfJobInterested")?? false;
  }
  Future<void> setnotfJobSeekerUpdates(bool value) async {
    _sharedPreferences.setBool("notfJobSeekerUpdates",value);
  }
  bool? getnotfJobSeekerUpdates( )  {
    return _sharedPreferences.getBool("notfJobSeekerUpdates")?? false;
  }
  Future<void> setnotfOtherProfile(bool value) async {
    _sharedPreferences.setBool("notfOtherProfile",value);
  }
  bool? getnotfOtherProfile( )  {
    return _sharedPreferences.getBool("notfOtherProfile")?? false;
  }
  Future<void> setnotfOtherAllMessage(bool value) async {
    _sharedPreferences.setBool("notfOtherAllMessage",value);
  }
  bool? getnotfOtherAllMessage( )  {
    return _sharedPreferences.getBool("notfOtherAllMessage")?? false;
  }
  Future<void> setnotfOtherNudges(bool value) async {
    _sharedPreferences.setBool("notfOtherNudges",value);
  }

  bool? getnotfOtherNudges( )  {
   return _sharedPreferences.getBool("notfOtherNudges")?? false;
  }
  Future<void> setlsAccAccVerificationToggle(bool value) async {
    _sharedPreferences.setBool("lsAccAccVerificationToggle",value);
  }
  bool? getlsAccAccVerificationToggle( )  {
    return  _sharedPreferences.getBool("lsAccAccVerificationToggle")?? false;
  }

}
