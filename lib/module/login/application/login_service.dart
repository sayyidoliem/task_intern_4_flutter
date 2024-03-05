import 'package:task_intern_3_flutter/import.dart';

class LoginService with LoginInterceptor implements LoginRepositories {
  final loginUrl = '/auth/login-mobile';

  @override
  Future<void> saveCode(String code) async {
    await UserStorage.saveCode(code);
  }

  @override
  Future<void> saveToken(Map<String, dynamic> tokenMap) async {
    final token = tokenMap['data']['token'];
    await TokenStorage.saveToken(token);
  }

  @override
  Future<void> saveUserId(Map<String, dynamic> userIdMap) async {
    final userId = userIdMap['data']['user_id'];
    await UserStorage.saveUserId(userId);
  }

  @override
  Future<bool> login(
      String userNameValue, String passwordValue, String codeValue) async {
    try {
      final dio = await loginInterceptor();
      Response response = await dio.post(
        loginUrl,
        options: Options(headers: {'code': codeValue}),
        data: {"username": userNameValue, "password": passwordValue},
      );
      print('Headers: ${response.headers}');
      print('Response: ${response.data}');
      print('Status code: ${response.statusCode}');
      if (response.statusCode == 200) {
        await saveUserId(response.data);
        await saveCode(codeValue);
        await saveToken(response.data);
        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      print("ERROR FROM DIO EXCEPTION : ${e.toString()}");
      if (e.response != null) {
        print('Error data: ${e.response}');
      }
      return false;
    }
  }
}
