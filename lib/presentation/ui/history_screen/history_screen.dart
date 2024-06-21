import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/gen/app_colors.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/shared/transitions/transitions.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/app_bar/common_app_bar.dart';
import 'package:study_mentor_mobile/presentation/ui/history_screen/blocs/history_cubit.dart';
import 'package:study_mentor_mobile/presentation/ui/history_screen/widgets/tab_ai_pay.dart';
import 'package:study_mentor_mobile/presentation/ui/history_screen/widgets/tab_tutor.dart';

import '../../../application/services/ai/ai.dart';
import '../../../application/services/app/app_config/app_config.dart';
import '../../../application/services/education/education.dart';
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
      length: 3,
      child: Scaffold(
        appBar: CommonAppBar(
          title: Text(
            "Lịch sử",
            style: Styles.s20(),
          ),
          centerTitle: true,
          color: AppColors.blue.shade50,
        ),
        body: BlocProvider<HistoryCubit>(
          lazy: false,
          create: (BuildContext context) {
            return HistoryCubit(
                aiController: context.read<AIController>(),
                educationController: context.read<EducationController>(),
                appConfig: context.read<AppConfig>(),
                userId: context.read<UserCubit>().state.detail?.id ?? '',
                failureHandlerManager: context.read<FailureHandlerManager>());
          },
          child: Builder(builder: (context) {
            return const Column(
              children: [
                TabBar(
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
                  ],
                ),
                Expanded(
                  child: TabBarView(children: [
                    TabAI(),
                    TabAIPay(),
                    TabTutor(),
                  ]),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
