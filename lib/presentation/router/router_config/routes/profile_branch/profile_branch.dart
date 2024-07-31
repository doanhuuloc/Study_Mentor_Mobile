import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/router/app_nav_key/app_nav_key.dart';
import 'package:study_mentor_mobile/presentation/ui/auth_screen/edit_profile_screen/edit_profile_screen.dart';

import '../../../../ui/auth_screen/bank_account_screen/bank_account_screen.dart';
import '../../../../ui/auth_screen/change_password_screen/change_password_screen.dart';
import '../../../../ui/auth_screen/login_screen/login_screen.dart';
import '../../../../ui/auth_screen/profile_screen/profile_screen.dart';
import '../../../../ui/auth_screen/register_screen/register_screen.dart';
import '../../../../ui/auth_screen/reset_password_screen/reset_password_screen.dart';

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

class ProfileRegisterRouteData extends GoRouteData {
  const ProfileRegisterRouteData({
    this.redirectUrl,
  });

  final String? redirectUrl;

  static const routeName = 'register';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return RegisterScreen.buildPage(
      context,
      state,
      redirectUrl: redirectUrl,
    );
  }
}

class ResetPasswordRouteData extends GoRouteData {
  const ResetPasswordRouteData();

  static const routeName = 'resetPassword';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ResetPasswordScreen();
}

class ChangePasswordRouteData extends GoRouteData {
  const ChangePasswordRouteData();

  static const routeName = 'changePassword';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ChangePasswordScreen();
}

class EditProfileRouteData extends GoRouteData {
  const EditProfileRouteData();

  static const routeName = 'editprofile';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EditProfileScreen();
}

class BankAccountRouteData extends GoRouteData {
  const BankAccountRouteData();

  static const routeName = 'bankAccount';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const BankAccountScreen();
}
