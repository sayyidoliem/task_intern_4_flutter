import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:task_intern_3_flutter/import.dart';

mixin LoginInterceptor {
  var option = BaseOptions(baseUrl: 'http://103.82.242.180:1440/api/v1');

  Future<Dio> loginInterceptor() async {
    Dio dio = Dio(option);
    dio.interceptors.clear();
    dio.interceptors.add(
      PrettyDioLogger(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        compact: true,
        error: true,
      ),
    );
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (request, handler) async {
        print("CALL ON REQUEST");
        //kalau tidak kosong dapetin code dari Lokal/SharedPreferences
        final code = await UserStorage.getCode();
        if (code != null) {
          request.headers["code"] = code;
        }
        //kalau tidak kosong dapetin access token dari Lokal/SharedPreferences
        final accessToken = await TokenStorage.getToken();
        if (accessToken != null) {
          request.headers["Authorization"] = "Bearer $accessToken";
        }
        print("LEWAT");
        return handler.next(request);
      },
      onError: (error, handler) {
        print("Stack trace Error: ${error.stackTrace}");
        if (error.response?.statusCode == 401 ||
            error.response?.statusCode == 400) {
          print(
              "ERROR : ${error.response?.statusCode} ${error.response?.statusMessage}");
        }
        return handler.next(error);
      },
    ));
    return dio;
  }
}
