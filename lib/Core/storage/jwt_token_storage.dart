import 'package:shared_preferences/shared_preferences.dart';

class JwtPrefsHelper {
  static final JwtPrefsHelper _instance = JwtPrefsHelper._internal();
  late SharedPreferences _prefs;
  static const key = "jwt_token";

  factory JwtPrefsHelper() {
    return _instance;
  }

  JwtPrefsHelper._internal();

  /// Call this once before using other methods
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> saveJwtToken(String token) async {
    await _prefs.setString(key, token);
  }

  String? getJwtToken() {
    return _prefs.getString(key);
  }

  Future<void> clearToken() async {
    await _prefs.remove(key);
  }
}
