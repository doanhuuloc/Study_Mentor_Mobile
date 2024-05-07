import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/screen/answer/answer.dart';
import 'package:study_mentor_mobile/screen/auth/signin.dart';
import 'package:study_mentor_mobile/screen/auth/signup.dart';
import 'package:study_mentor_mobile/screen/chat/chat_screen.dart';
import 'package:study_mentor_mobile/screen/createMeet/createMeetScreen.dart';
import 'package:study_mentor_mobile/screen/findIntrustor/findIntrustor.dart';
import 'package:study_mentor_mobile/screen/history/history.dart';
import 'package:study_mentor_mobile/screen/home/home.dart';
import 'package:study_mentor_mobile/screen/makeQuestion/makeQuesiton.dart';
import 'package:study_mentor_mobile/screen/setting/setting.dart';
import 'package:study_mentor_mobile/screen/tutor/tutor.dart';
import 'package:study_mentor_mobile/screen/user/user.dart';

class MyRouterConfig {
  static final route = GoRouter(initialLocation: "/login", routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen(), routes: [
      GoRoute(
          path: 'makequestion',
          builder: (context, state) => MakeQuestionScreen(),
          routes: [
            GoRoute(
                path: "findintrustor",
                builder: (context, state) => FindIntrustorScreen(),
                routes: [
                  GoRoute(
                    path: "answer",
                    builder: (context, state) => AnswerScreen(),
                  ),
                  GoRoute(
                    path: "tutor",
                    builder: (context, state) => TutorScreen(),
                  )
                ])
          ]),
      GoRoute(
        path: 'createmeet',
        builder: (context, state) => CreateMeetScreen(),
      ),
      GoRoute(
        path: 'editprofile',
        builder: (context, state) => EditProfile(),
      ),
      GoRoute(
        path: 'setting',
        builder: (context, state) => SettingScreen(),
      ),
      GoRoute(
        path: 'chat',
        builder: (context, state) => ChatScreen(),
      ),
      GoRoute(
        path: 'history',
        builder: (context, state) => HistoryScreen(),
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
