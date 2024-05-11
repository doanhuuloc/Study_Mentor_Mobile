import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../shared/transitions/transitions.dart';
import 'widgets/history_tab_view.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  // static Page<void> buildPage(BuildContext context, GoRouterState state) {
  //   return CustomTransitionPage(
  //     child: const HistoryScreen(),
  //     transitionsBuilder: (BuildContext context, Animation<double> animation,
  //         Animation<double> secondaryAnimation, Widget child) {
  //       return CustomTransitionBuilder.noTransition(
  //         context,
  //         animation,
  //         secondaryAnimation,
  //         child,
  //       );
  //     },
  //   );
  // }

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("haha"),
          bottom: const TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            dividerHeight: 0,
            tabs: [
              Tab(
                child: Text("AI thường"),
              ),
              Tab(
                child: Text("AI hệ thống"),
              ),
              Tab(
                child: Text("Người hướng dẫn"),
              ),
              Tab(
                child: Text("GG Meet"),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          HistoryTabView(),
          SingleChildScrollView(
            child: Text("2"),
          ),
          SingleChildScrollView(
            child: Text("3"),
          ),
          SingleChildScrollView(
            child: Text("3"),
          ),
        ]),
      ),
    );
  }
}
