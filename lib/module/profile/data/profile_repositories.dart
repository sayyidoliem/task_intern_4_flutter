import 'package:task_intern_3_flutter/import.dart';

abstract class ProfileRepositories {
  Future<Profile> fetchUser();
}