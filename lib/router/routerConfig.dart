import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/screen/auth/signin.dart';
import 'package:study_mentor_mobile/screen/auth/signup.dart';
import 'package:study_mentor_mobile/screen/home/home.dart';

class MyRouterConfig {
  static final route = GoRouter(initialLocation: "/", routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => SignupScreen(),
    )
  ]);
}
