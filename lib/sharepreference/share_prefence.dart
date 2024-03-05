import 'package:task_intern_3_flutter/import.dart';

class UserStorage {
  static Future<void> saveUserId(int userId) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('user_id', userId);
  }

  static Future<int?> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('user_id');
  }

  static Future<void> saveCode(String code) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('code', code);
  }

  static Future<String?> getCode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('code');
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}

// class TokenStorage {
//   static Future<void> saveToken(String token) async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setString('token', token);
//   }

//   static Future<String?> getToken() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString('token');
//   }
// }
