import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/app_bar/common_app_bar.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';
import 'package:study_mentor_mobile/presentation/ui/notification_screen/widgets/notification_item.dart';
import 'package:study_mentor_mobile/presentation/utilities/formatCurency.dart';

import '../../../application/services/user/user.dart';
import '../../shared/base_infinite_loading/app_shimmer.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'bloc/notification_cubit.dart';
import 'bloc/notification_state.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: Text(S.of(context).notification),
      ),
      body: BlocProvider<NotificationCubit>(
        create: (context) => NotificationCubit(
          failureHandlerManager: context.read<FailureHandlerManager>(),
          userController: context.read<UserController>(),
        ),
        child: BlocBuilder<NotificationCubit, NotificationState>(
          buildWhen: (previous, current) =>
              previous.notifications != current.notifications,
          builder: (context, state) {
            if (state.loading) {
              return AppShimmer(
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 80,
                      decoration: const BoxDecoration(color: Colors.black),
                    );
                  },
                ),
              );
            }
            return SingleChildScrollView(
                child: GapItems(
              gap: 10,
              items: state.notifications
                  .map((noti) => NotificationItem(
                        title: S.of(context).selectTutorSuccess,
                        content: S.of(context).intructorSelectQuestion(
                              noti.tutor?.fullName ?? "",
                              noti.question?.title ?? "",
                              formatCurrency(
                                  double.parse(
                                      noti.question?.promoPrice ?? "0"),
                                  context),
                            ),
                        dateTime: noti.createdAt ?? DateTime.now(),
                        onTap: () {
                          DetailedQuestionRouteData(
                                  questionId: noti.question?.id ?? "")
                              .push(context);
                        },
                      ))
                  .toList(),
            ));
          },
        ),
      ),
    );
  }
}
