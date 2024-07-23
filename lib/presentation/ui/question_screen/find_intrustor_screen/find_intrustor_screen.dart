import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/shared/base_infinite_loading/app_shimmer.dart';
import 'package:study_mentor_mobile/presentation/ui/question_screen/find_intrustor_screen/widgets/intrustor_item.dart';

import '../../../../application/services/education/education.dart';
import '../../../bases/socket_cubit/socket_cubit.dart';
import '../../../bases/user_cubit/user_cubit.dart';
import '../../../gen/app_colors.dart';
import '../../../router/router_config/router_config.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/app_bar/common_app_bar.dart';
import '../../../shared/widgets/buttons/primary_button.dart';
import '../../../shared/widgets/gap_items.dart';
import 'blocs/find_intrustor_cubit.dart';
import 'blocs/find_intrustor_state.dart';

class FindIntrustorScreen extends StatefulWidget {
  const FindIntrustorScreen({
    super.key,
    required this.questionId,
    required this.subjectId,
  });
  final String questionId;
  final String subjectId;

  @override
  State<FindIntrustorScreen> createState() => _FindIntrustorScreenState();
}

class _FindIntrustorScreenState extends State<FindIntrustorScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FindIntrustorCubit>(
      create: (context) => FindIntrustorCubit(
        failureHandlerManager: context.read<FailureHandlerManager>(),
        educationController: context.read<EducationController>(),
        socketCubit: context.read<SocketCubit>(),
        questionId: widget.questionId,
        subjectId: widget.subjectId,
        userId: context.read<UserCubit>().state.detail?.id ?? "",
      ),
      child: Builder(builder: (context) {
        return BlocListener<FindIntrustorCubit, FindIntrustorState>(
          listener: (context, state) async {
            if (state.findingWithSystem) {
              final navigate =
                  await FindingIntrustorRouteData(questionId: widget.questionId)
                      .push(context);

              if (navigate == null || navigate == false) {
                if (!context.mounted) {
                  return;
                }
                context.read<FindIntrustorCubit>().setFindingWithSystem(false);
              } else if (navigate == true) {
                if (!context.mounted) {
                  return;
                }
                context.pop(true);
              }
            }

            if (state.isAccepted == true) {
              if (!context.mounted) {
                return;
              }
              context.pop(true);
            }
          },
          child: Scaffold(
            appBar: CommonAppBar(
              title: Text(S.of(context).findIntructor),
              color: AppColors.blue.shade50,
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: GapItems(
                gap: 15,
                crossAxisAlignmentRow: CrossAxisAlignment.start,
                items: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          S.of(context).systemFindSuitableIntuctor,
                          style: Styles.s16().withWeight(FontWeight.w600),
                        ),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        height: 50,
                        width: 75,
                        child: PrimaryButton.round(
                          onPressed: () {
                            if (context
                                    .read<FindIntrustorCubit>()
                                    .state
                                    .waittingTutorAccepted ==
                                true) {
                              AlertRouteData(
                                      content: S
                                          .of(context)
                                          .wattingIntructorAccepted)
                                  .push(context);
                            } else {
                              context
                                  .read<FindIntrustorCubit>()
                                  .findIntrustor();
                            }
                          },
                          title: S.of(context).find,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    S.of(context).suggestedInstructor,
                    style: Styles.s16().withWeight(FontWeight.w600),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: BlocBuilder<FindIntrustorCubit, FindIntrustorState>(
                      buildWhen: (previous, current) =>
                          previous.tutor != current.tutor,
                      builder: (context, state) {
                        return RefreshIndicator(
                          onRefresh: () async {},
                          child: AppShimmer(
                            enabled: state.tutor == null,
                            child: state.tutor == null
                                ? GapItems(
                                    gap: 10,
                                    items: [
                                      ...List.generate(4, (idx) => idx)
                                          .map(
                                            (e) => IntrustorItem(
                                              name: "",
                                              numberOfStar: 5,
                                              voidCallback: () {},
                                              avatar: "",
                                              loading: true,
                                            ),
                                          )
                                          .toList(),
                                    ],
                                  )
                                : GapItems(
                                    gap: 10,
                                    items: [
                                      ...(context
                                                  .read<FindIntrustorCubit>()
                                                  .state
                                                  .tutor ??
                                              [])
                                          .map(
                                        (e) => IntrustorItem(
                                          name: e.fullName ?? "",
                                          numberOfStar: e.averageRate ?? 0,
                                          avatar: e.avatar?.fileKey ?? "",
                                          voidCallback: () {
                                            if (state.waittingTutorAccepted ==
                                                true) {
                                              AlertRouteData(
                                                      content: S
                                                          .of(context)
                                                          .wattingIntructorAccepted)
                                                  .push(context);
                                            } else {
                                              context
                                                  .read<FindIntrustorCubit>()
                                                  .selectTutor(context, e);
                                            }
                                            // IntrustorInfoRouteData(
                                            //         $extra:
                                            //             IntrustorInfoExtraData(
                                            //                 intrustor:
                                            //                     UserInfoResponse(
                                            //                   id: e.id,
                                            //                   fullName:
                                            //                       e.fullName,
                                            //                 ),
                                            //                 questionId: widget
                                            //                     .questionId))
                                            //     .push(context);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                        );
                      },
                    ),
                  ))
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
