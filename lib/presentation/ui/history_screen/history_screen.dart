import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/shared/transitions/transitions.dart';
import 'package:study_mentor_mobile/presentation/ui/history_screen/blocs/history_cubit.dart';

import '../../../application/services/ai/ai.dart';
import '../../../application/services/app/app_config/app_config.dart';
import '../../bases/user_cubit/user_cubit.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'widgets/tab_ai.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  static Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: const HistoryScreen(),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return CustomTransitionBuilder.noTransition(
          context,
          animation,
          secondaryAnimation,
          child,
        );
      },
    );
  }

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
        body: BlocProvider<HistoryCubit>(
          create: (BuildContext context) {
            return HistoryCubit(
                aiController: context.read<AIController>(),
                appConfig: context.read<AppConfig>(),
                userCubit: context.read<UserCubit>(),
                failureHandlerManager: context.read<FailureHandlerManager>());
          },
          child: const TabBarView(children: [
            TabAI(),
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
      ),
    );
  }
}
