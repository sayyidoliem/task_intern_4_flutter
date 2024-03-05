class Login {
  final String code;
  final String userName;
  final String password;

  Login({required this.code, required this.userName, required this.password});

  factory Login.fromJson(Map<String, dynamic> json) =>
      Login(code: json[''], userName: json[''], password: json['']);
}
