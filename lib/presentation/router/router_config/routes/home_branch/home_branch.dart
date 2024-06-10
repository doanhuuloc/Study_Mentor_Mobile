import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/application/services/ai/dto/enum.dart';
import 'package:study_mentor_mobile/presentation/router/app_nav_key/app_nav_key.dart';

import '../../../../../application/services/education/education.dart';
import '../../../../../application/services/user/user.dart';
import '../../../../ui/chat_ai_screen/chat_ai_screen.dart';
import '../../../../ui/chat_intrustor_screen/chat_intrustor_screen.dart';
import '../../../../ui/create_question_screen/create_question_screen.dart';
import '../../../../ui/find_intrustor_screen/find_intrustor_screen.dart';
import '../../../../ui/finding_intrustor_screen/finding_intrustor_screen.dart';
import '../../../../ui/home_screen/home_screen.dart';
import '../../../../ui/intrustor_answer_screen/intrustor_answer_screen.dart';
import '../../../../ui/intrustor_info_screen/intrustor_info_screen.dart';
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
  final UserInfoResponse intrustor;
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
      intrustor: $extra?.intrustor ?? const UserInfoResponse(),
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
    return const CreateQuestionScreen(
      questionType: QuestionType.FILE,
    );
  }
}

class CreateGGMeetRouteData extends GoRouteData {
  const CreateGGMeetRouteData();
  static const routeName = 'createGGMeet';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CreateQuestionScreen(
      questionType: QuestionType.GGMEET,
    );
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
  const FindIntrustorRouteData(
      {required this.$extra, required this.questionId});

  final FindIntrustorExtraData? $extra;
  final String questionId;
  static const routeName = 'findIntrustor/:questionId';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FindIntrustorScreen(
      questionId: $extra?.questionId ?? "",
      subjectId: $extra?.subjectId ?? "",
    );
  }
}

class FindingIntrustorRouteData extends GoRouteData {
  const FindingIntrustorRouteData({required this.questionId});
  final String questionId;
  static const routeName = 'findingIntrustor/:questionId';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FindingIntrustorScreen(
      questionId: questionId,
    );
  }
}

class IntrustorAnswerRouteData extends GoRouteData {
  const IntrustorAnswerRouteData({required this.questionId});
  final String questionId;
  static const routeName = 'intrustorAnswer/:questionId';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return IntrustorAnswerScreen(
      questionId: questionId,
    );
  }
}

class IntrustorInfoExtraData {
  const IntrustorInfoExtraData({
    required this.intrustor,
    this.questionId,
  });
  final UserInfoResponse intrustor;
  final String? questionId;
}

class IntrustorInfoRouteData extends GoRouteData {
  const IntrustorInfoRouteData({required this.$extra});
  static const routeName = 'intrustorInfo';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  final IntrustorInfoExtraData $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return IntrustorInfoScreen(
      intrustor: $extra.intrustor,
      questionId: $extra.questionId,
    );
  }
}
