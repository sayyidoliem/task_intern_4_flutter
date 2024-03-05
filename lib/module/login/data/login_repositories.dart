abstract class LoginRepositories {
  Future<bool> login(String userNameValue, String passwordValue, String codeValue);

  Future<void> saveToken(Map<String, dynamic> tokenMap);

  Future<void> saveUserId(Map<String, dynamic> userIdMap);

  Future<void> saveCode(String code);
}
