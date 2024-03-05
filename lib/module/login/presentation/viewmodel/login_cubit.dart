import 'package:task_intern_3_flutter/import.dart';
part 'login_state.dart';

// class LoginCubit extends Cubit<LoginState> {
//   final LoginService loginService;
//   LoginCubit({required this.loginService}) : super(LoginInitial());

//   void login(String userName, String password, String code) async {
//     try {
//       emit(LoginLoading());
//       final login = await loginService.login(userName, password, code);
//       emit(LoginSuccess(login: login));
//     } catch (e) {
//       emit(LoginError());
//     }
//   }
// }
