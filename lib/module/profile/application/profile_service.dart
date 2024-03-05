import 'package:task_intern_3_flutter/import.dart';

class ProfileService with LoginInterceptor implements ProfileRepositories {
  @override
  Future<Profile> fetchUser() async {
    final getUserId = await UserStorage.getUserId();
    const String profileUrl = '/mobile-api/profile';

    Dio dio = await loginInterceptor();

    final profileResponse = await dio.get(
      profileUrl,
      queryParameters: {"user_id": getUserId, "type": 1},
    );

    final profileResult = profileResponse.data["data"];
    print(profileResult);
    Profile profileList = Profile.fromJson(profileResult);
    return profileList;
  }
}
