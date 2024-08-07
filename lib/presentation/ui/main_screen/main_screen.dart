import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/router_config/router_config.dart';
import '../../shared/transitions/transitions.dart';
import '../../utilities/request_login.dart';
import 'main_pop_scope.dart';
import 'widgets/main_bottom_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
    required this.navigator,
  });

  final Widget navigator;

  static Page<void> buildPage(
      BuildContext context, GoRouterState state, Widget navigator) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: MainScreen(
        navigator: navigator,
      ),
      transitionDuration: const Duration(milliseconds: 850),
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return CustomTransitionBuilder.slideFromRightTransition(
            context,
            animation,
            secondaryAnimation,
            CustomTransitionBuilder.backgroundFadeTransition(
              context,
              animation,
              secondaryAnimation,
              child,
            ));
      },
    );
  }

  void onChangeTab(BuildContext context, int index) async {
    switch (index) {
      case 0:
        const HomeRouteData().go(context);
        break;
      case 1:
        final isSuccess = await requestLoginAction(context);
        if (!isSuccess) {
          return;
        }
        if (context.mounted) {
          const HistoryRouteData().go(context);
        }
        break;

      case 2:
        const ProfileRouteData().go(context);
        break;
    }
  }

  int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith(const HomeRouteData().location)) {
      return 0;
    }
    if (location.startsWith(const HistoryRouteData().location)) {
      return 1;
    }
    if (location.startsWith(const ProfileRouteData().location)) {
      return 2;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return MainPopScope(
      child: Scaffold(
        body: navigator,
        // appBar: MainAppBar(
        //   currentMainTabIndex: currentIndex,
        //   backgroundColor: AppColors.blue.shade50,
        // ),
        bottomNavigationBar: MainBottomNavigationBar(
          selected: getCurrentIndex(context),
          onSelected: (index) => onChangeTab(context, index),
        ),
      ),
    );
  }
}
