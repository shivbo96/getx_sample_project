import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Preference {
  static Preference? _prefHelper;
  static const IS_USER_LOGIN = "IS_USER_LOGIN";
  static const IS_WELCOME_SCREEN = "IS_WELCOME_SCREEN";
  static const ACCESS_TOKEN = "ACCESS_TOKEN";
  static const USERNAME = "USER_NAME";
  static const FULL_NAME = "FULL_NAME";
  static const USER_EMAIL = "USER_EMAIL";
  static const IS_PROFILE_ADD = "IS_PROFILE_ADD";
  static const IS_GENRES_ADD = "IS_PROFILE_ADD";
  static const IS_ARTIST_ADD = "IS_PROFILE_ADD";

  static getInstance() {
    _prefHelper ??= Preference();
    return _prefHelper;
  }

  static SharedPreferences? _prefs;
  static final Map<String, dynamic> _memoryPrefs = <String, dynamic>{};




  static Future<SharedPreferences?> load() async {
    _prefs ??= Get.find<SharedPreferences>();
    return _prefs;
  }

  static Future<bool> clearPref() async {
    bool clear = await _prefs!.clear();
    if (clear) {
      _memoryPrefs.clear();
    }
    return clear;
  }

  static void setString(String key, String value) {
    _prefs!.setString(key, value);
    _memoryPrefs[key] = value;
  }

  static void setListString(String key, List<String> value) {
    _prefs!.setStringList(key, value);
    _memoryPrefs[key] = value;
  }

  static void setInt(String key, int value) {
    _prefs!.setInt(key, value);
    _memoryPrefs[key] = value;
  }

  static void setDouble(String key, double value) {
    _prefs!.setDouble(key, value);
    _memoryPrefs[key] = value;
  }

  static void setBool(String key, bool value) {
    _prefs!.setBool(key, value);
    _memoryPrefs[key] = value;
  }

  static String getString(String key, {String? def}) {
    String? val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    val ??= _prefs!.getString(key);
    val ??= def;
    val ??= '';
    _memoryPrefs[key] = val;
    return val;
  }

  static List<String> getListString(String key, {List<String>? def}) {
    List<String>? val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    val ??= _prefs!.getStringList(key);
    val ??= def;
    _memoryPrefs[key] = val;
    return val!;
  }

  static bool exists(String key, {String? def}) {
    return _prefs!.containsKey(key);
  }

  static int getInt(String key, {int? def}) {
    int? val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    val ??= _prefs!.getInt(key);
    val ??= def;
    _memoryPrefs[key] = val;
    return val!;
  }

  static double getDouble(String key, {double? def}) {
    double? val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    val ??= _prefs!.getDouble(key);
    val ??= def;
    _memoryPrefs[key] = val;
    return val!;
  }

  static bool getBool(String key, {bool? def = false}) {
    bool? val = def;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    if (_prefs == null) {
      return val!;
    }
    val = _prefs!.getBool(key);
    val ??= def;
    _memoryPrefs[key] = val;
    return val!;
  }
}