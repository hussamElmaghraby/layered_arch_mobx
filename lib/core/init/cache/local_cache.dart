import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocaleManager {
  static final LocaleManager _instance = LocaleManager._init();

  SharedPreferences? _preferences;

  static LocaleManager get instance => _instance;

  LocaleManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }

  Future<bool?> clear() async {
    return await _preferences!.clear();
  }

  Future<bool> setDynamicJson<T>(
      {required PreferencesKeys key, required T model}) async {
    return await _preferences!.setString(
      key.toString(),
      jsonEncode(model),
    );
  }

  Future<bool> setStringValue(PreferencesKeys key, String value) async {
    return await _preferences!.setString(key.toString(), value);
  }

  Future<bool> setIntegerValue(PreferencesKeys key, int value) async {
    return await _preferences!.setInt(key.toString(), value);
  }

  Future<bool> setBooleanValue(PreferencesKeys key, bool value) async {
    return await _preferences!.setBool(key.toString(), value);
  }

  String getStringValue(PreferencesKeys key) =>
      _preferences!.getString(key.toString()) ?? '';

  bool getBoolValue(PreferencesKeys key) =>
      _preferences!.getBool(key.toString()) ?? false;

  int getIntegerValue(PreferencesKeys key) =>
      _preferences!.getInt(key.toString()) ?? -1;

  String getDynamicJsonValue(PreferencesKeys key) => getStringValue(key);
}

enum PreferencesKeys {
  TOKEN,
  SOCIAL,
  FIRST_LOGIN_APP,
  REFRESH_TOKEN,
  LOGIN,
  USER,
  THEME,
}
