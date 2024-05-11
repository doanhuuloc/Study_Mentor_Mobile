import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../ui/home_screen/home_screen.dart';

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

// class DrawerRouteData extends GoRouteData {
//   const DrawerRouteData();

//   static const routeName = 'drawer';
//   static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

//   @override
//   Page<void> buildPage(BuildContext context, GoRouterState state) {
//     return DrawerScreen.buildPage(context, state);
//   }
// }

// class HomeLoginRouteData extends GoRouteData {
//   const HomeLoginRouteData({
//     this.redirectUrl,
//   });

//   final String? redirectUrl;

//   static const routeName = 'login';
//   static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

//   @override
//   Widget build(BuildContext context, GoRouterState state) {
//     return LoginScreen(
//       redirectUrl: redirectUrl,
//     );
//   }
// }
