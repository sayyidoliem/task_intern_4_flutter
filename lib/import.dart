//package
export 'package:flutter/material.dart';
export 'package:bloc/bloc.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:flutter_secure_storage/flutter_secure_storage.dart';
export 'package:dio/dio.dart';
export 'package:pretty_dio_logger/pretty_dio_logger.dart';

//data
export 'package:task_intern_3_flutter/module/login/data/login_repositories.dart';
export 'package:task_intern_3_flutter/module/profile/data/profile_repositories.dart';

//model
export 'package:task_intern_3_flutter/module/login/domain/login.dart';
export 'package:task_intern_3_flutter/module/profile/domain/profile.dart';

//view
export 'package:task_intern_3_flutter/module/login/presentation/view/login_page.dart';
export 'package:task_intern_3_flutter/module/bottombar/view/bottom_page.dart';
export 'package:task_intern_3_flutter/module/home/presetation/view/home_page.dart';
export 'package:task_intern_3_flutter/module/profile/presentation/view/profile_page.dart';
export 'package:task_intern_3_flutter/module/schedule/presetation/view/schedule_page.dart';
export 'package:task_intern_3_flutter/module/error/error_page.dart';

//viewmodel
export 'package:task_intern_3_flutter/module/bottombar/viewmodel/bottom_bar_cubit.dart';
export 'package:task_intern_3_flutter/module/profile/presentation/viewmodel/profile_cubit.dart';
export 'package:task_intern_3_flutter/module/home/presetation/viewmodel/home_cubit.dart';
export 'package:task_intern_3_flutter/module/schedule/presetation/viewmodel/schedule_cubit.dart';
export 'package:task_intern_3_flutter/module/login/presentation/viewmodel/login_cubit.dart';

//utils
export 'package:task_intern_3_flutter/config/router/routes.dart';
export 'package:task_intern_3_flutter/config/constant/names_routes.dart';

//service
export 'package:task_intern_3_flutter/module/login/application/login_service.dart';
export 'package:task_intern_3_flutter/config/service/services.dart';
export 'package:task_intern_3_flutter/module/profile/application/profile_service.dart';

//constant
export 'package:task_intern_3_flutter/config/constant/api_path.dart';

//share prefence
export 'package:shared_preferences/shared_preferences.dart';
export 'package:task_intern_3_flutter/sharepreference/share_prefence.dart';

//token
export 'package:task_intern_3_flutter/sharepreference/token.dart';
