import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/application/services/ai/dto/enum.dart';
import 'package:study_mentor_mobile/presentation/router/app_nav_key/app_nav_key.dart';

import '../../../../../application/services/socket/dto/dto.dart';
import '../../../../ui/chat_ai_screen/chat_ai_screen.dart';
import '../../../../ui/chat_intrustor_screen/chat_intrustor_screen.dart';
import '../../../../ui/create_ggmeet_screen/create_ggmeet_screen.dart';
import '../../../../ui/create_question_screen/create_question_screen.dart';
import '../../../../ui/find_intrustor_screen/find_intrustor_screen.dart';
import '../../../../ui/finding_intrustor_screen/finding_intrustor_screen.dart';
import '../../../../ui/home_screen/home_screen.dart';
import '../../../../ui/intrustor_answer_screen/intrustor_answer_screen.dart';
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

class ChatAIRouteData extends GoRouteData {
  const ChatAIRouteData({this.$extra, required this.typeAI});
  final String? $extra;
  final TypeAI typeAI;
  static const routeName = 'chatai/:typeAI';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ChatAIScreen(
      roomId: $extra,
      typeAI: typeAI,
    );
  }
}

class ChatIntrustorExtraData {
  const ChatIntrustorExtraData({
    required this.roomId,
    required this.intrustor,
  });
  final Tutor intrustor;
  final String roomId;
}

class ChatIntrustorRouteData extends GoRouteData {
  const ChatIntrustorRouteData({this.$extra});
  final ChatIntrustorExtraData? $extra;
  static const routeName = 'chatintrustor';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ChatIntrustorScreen(
      intrustor: $extra?.intrustor ?? const Tutor(),
      roomId: $extra?.roomId ?? "",
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

class FindIntrustorExtraData {
  const FindIntrustorExtraData({
    required this.questionId,
    required this.subjectId,
  });
  final String questionId;
  final String subjectId;
}

class FindIntrustorRouteData extends GoRouteData {
  const FindIntrustorRouteData({this.$extra});
  static const routeName = 'findIntrustor';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  final FindIntrustorExtraData? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FindIntrustorScreen(
      questionId: $extra?.questionId ?? "",
      subjectId: $extra?.subjectId ?? "",
    );
  }
}

class FindingIntrustorRouteData extends GoRouteData {
  const FindingIntrustorRouteData();
  static const routeName = 'findingIntrustor';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FindingIntrustorScreen();
  }
}

class IntrustorAnswerRouteData extends GoRouteData {
  const IntrustorAnswerRouteData();

  static const routeName = 'intrustorAnswer';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const IntrustorAnswerScreen();
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
