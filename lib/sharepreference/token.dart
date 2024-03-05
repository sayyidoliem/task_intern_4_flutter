import 'package:task_intern_3_flutter/import.dart';

class TokenStorage {
  static const storage = FlutterSecureStorage();

  static Future<void> saveToken(String token) {
    return storage.write(key: 'token', value: token);
  }

  static Future<String?> getToken() {
    return storage.read(key: 'token');
  }
}
