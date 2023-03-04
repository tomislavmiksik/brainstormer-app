import 'package:auto_route/annotations.dart';
import 'package:brainstormer_app/flow/home/home_screen.dart';
import 'package:brainstormer_app/flow/login/login_screen.dart';
import 'package:brainstormer_app/flow/splash/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      page: SplashScreen,
      path: 'splash',
      usesPathAsKey: true,
    ),
    AutoRoute(
      page: HomeScreen,
      initial: true,
      path: 'home',
      usesPathAsKey: true,
    ),
    AutoRoute(
      page: LoginScreen,
      path: 'login',
      usesPathAsKey: true,
    ),
  ],
)
class $AppRouter {}
