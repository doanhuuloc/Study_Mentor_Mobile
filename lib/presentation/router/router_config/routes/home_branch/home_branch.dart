import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/application/services/ai/dto/enum.dart';
import 'package:study_mentor_mobile/presentation/router/app_nav_key/app_nav_key.dart';

import '../../../../ui/chat_screen/chat_screen.dart';
import '../../../../ui/create_ggmeet_screen/create_ggmeet_screen.dart';
import '../../../../ui/create_question_screen/create_question_screen.dart';
import '../../../../ui/find_intrustor_screen/find_intrustor_screen.dart';
import '../../../../ui/home_screen/home_screen.dart';
import '../../../../ui/login_screen/login_screen.dart';

class HomeBranchData extends StatefulShellBranchData {
  const HomeBranchData();
}

class HomeRouteData extends GoRouteData {
  const HomeRouteData();

  static const routeName = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

class HomeLoginRouteData extends GoRouteData {
  const HomeLoginRouteData({
    this.redirectUrl,
  });

  final String? redirectUrl;

  static const routeName = 'login';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LoginScreen(
      redirectUrl: redirectUrl,
    );
  }
}

class ChatRouteData extends GoRouteData {
  const ChatRouteData({this.$extra, required this.typeAI});
  final String? $extra;
  final TypeAI typeAI;
  static const routeName = 'chat/:typeAI';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ChatScreen(
      roomId: $extra,
      typeAI: typeAI,
    );
  }
}

class CreateQuestionRouteData extends GoRouteData {
  const CreateQuestionRouteData();
  static const routeName = 'createQuestion';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CreateQuestionScreen();
  }
}

class FindIntrustorRouteData extends GoRouteData {
  const FindIntrustorRouteData();
  static const routeName = 'findIntrustor';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FindIntrustorScreen();
  }
}

class CreateGGMeetRouteData extends GoRouteData {
  const CreateGGMeetRouteData();
  static const routeName = 'createGGMeet';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CreateGGMeetScreen();
  }
}
