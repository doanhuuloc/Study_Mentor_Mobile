import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/ui/history_screen/history_screen.dart';

class HistoryBranchData extends StatefulShellBranchData {
  const HistoryBranchData();
}

class HistoryRouteData extends GoRouteData {
  const HistoryRouteData();

  static const routeName = '/history';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HistoryScreen();
  }
}
