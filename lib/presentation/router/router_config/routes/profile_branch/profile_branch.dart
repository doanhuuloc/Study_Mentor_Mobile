import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/router/app_nav_key/app_nav_key.dart';

import '../../../../ui/login_screen/login_screen.dart';
import '../../../../ui/profile_screen/profile_screen.dart';
import '../../../../ui/register_screen/register_screen.dart';

class ProfileBranchData extends StatefulShellBranchData {
  const ProfileBranchData();
}

class ProfileRouteData extends GoRouteData {
  const ProfileRouteData();

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}

class ProfileLoginRouteData extends GoRouteData {
  const ProfileLoginRouteData({
    this.redirectUrl,
  });

  final String? redirectUrl;

  static const routeName = 'login';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return LoginScreen.buildPage(
      context,
      state,
      redirectUrl: redirectUrl,
    );
  }
}

class RegisterRouteData extends GoRouteData {
  const RegisterRouteData();

  static const routeName = 'register';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RegisterScreen();
}
