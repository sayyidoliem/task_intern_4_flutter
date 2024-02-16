import 'package:task_intern_3_flutter/import.dart';

class MyRoute {
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.login:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const LoginPage(),
        );
      case RoutesName.bottomNav:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => MultiBlocProvider(providers: [
            BlocProvider(
              create: (context) => BottomBarCubit(),
            ),
            BlocProvider(
              create: (context) => ScheduleCubit(),
            ),
            BlocProvider(
              create: (context) => ProfileCubit(),
            ),
            BlocProvider(
              create: (context) => HomeCubit(),
            )
          ], child: BottomNavigation()),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const ErrorPage(),
        );
    }
  }
}
