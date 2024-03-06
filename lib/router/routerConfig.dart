import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/screen/auth/signin.dart';
import 'package:study_mentor_mobile/screen/auth/signup.dart';
import 'package:study_mentor_mobile/screen/chat/chat_screen.dart';
import 'package:study_mentor_mobile/screen/home/home.dart';
import 'package:study_mentor_mobile/screen/user/user.dart';

class MyRouterConfig {
  static final route = GoRouter(initialLocation: "/login", routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen(), routes: [
      GoRoute(
        path: 'chat',
        builder: (context, state) => ChatScreen(),
      ),
      GoRoute(
        path: 'editprofile',
        builder: (context, state) => EditProfile(),
      )
    ]),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => SignupScreen(),
    ),
  ]);
}
