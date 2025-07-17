import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  static final SharedPrefsHelper _instance = SharedPrefsHelper._internal();
  static const key = "id";

  late SharedPreferences _prefs;

  factory SharedPrefsHelper() {
    return _instance;
  }

  SharedPrefsHelper._internal();

  /// Call this once before using other methods
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> saveUserId(String id) async {
    log("message $id");
    await _prefs.setString(key, id);
  }

  String? getUserId() {
    return _prefs.getString(key);
  }

  Future<void> clearUserId() async {
    await _prefs.remove(key);
  }
}
