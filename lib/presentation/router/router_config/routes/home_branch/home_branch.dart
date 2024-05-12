import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/router/app_nav_key/app_nav_key.dart';

import '../../../../ui/chat_screen/chat_screen.dart';
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
  const ChatRouteData({this.$extra});
  final String? $extra;
  static const routeName = 'chat';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ChatScreen(roomId: $extra);
  }
}
