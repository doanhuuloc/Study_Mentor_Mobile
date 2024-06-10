import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/application/services/user/response/response.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/ui/intrustor_answer_screen/blocs/intrustor_answer_state.dart';
import 'package:study_mentor_mobile/presentation/ui/intrustor_answer_screen/widgets/form_ratting.dart';

import '../../../application/services/education/education.dart';
import '../../bases/socket_cubit/socket_cubit.dart';
import '../../gen/app_colors.dart';
import '../../gen/assets.gen.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';

import '../../shared/widgets/app_bar/common_app_bar.dart';
import '../../shared/widgets/buttons/common_button.dart';
import '../../shared/widgets/gap_items.dart';
import 'blocs/intrustor_answer_cubit.dart';
import 'widgets/answer_info_box.dart';
import 'widgets/intrustor_item.dart';
import 'widgets/question_info_box.dart';
import 'widgets/question_summary.dart';

class IntrustorAnswerScreen extends StatefulWidget {
  const IntrustorAnswerScreen({super.key, required this.questionId});

  final String questionId;
  @override
  State<IntrustorAnswerScreen> createState() => _IntrustorAnswerScreenState();
}

class _IntrustorAnswerScreenState extends State<IntrustorAnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<IntrustorAnswerCubit>(
        create: (context) => IntrustorAnswerCubit(
            failureHandlerManager: context.read<FailureHandlerManager>(),
            educationController: context.read<EducationController>(),
            socketCubit: context.read<SocketCubit>(),
            questionId: widget.questionId),
        child: BlocBuilder<IntrustorAnswerCubit, IntrustorAnswerState>(
            builder: (context, state) {
          return Scaffold(
            appBar: CommonAppBar(
              title: const Text("Câu trả lời"),
              color: AppColors.blue.shade50,
            ),
            floatingActionButton: state.questionInfo == null
                ? null
                : Padding(
                    padding: const EdgeInsets.only(bottom: 20, right: 10),
                    child: Material(
                      color: Colors.transparent,
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(1000),
                        child: Ink(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: AppColors.blue.shade50,
                              shape: BoxShape.circle),
                          child: Assets.svgs.chat.svg(
                            color: Colors.blue,
                            height: 30,
                            width: 30,
                          ),
                        ),
                        onTap: () {
                          ChatIntrustorRouteData(
                                  $extra: ChatIntrustorExtraData(
                                      roomId:
                                          "b9a66b1d-fdc6-4a86-966f-4016f2e5e927",
                                      intrustor: state.questionInfo?.tutor ??
                                          const UserInfoResponse()))
                              .push(context);
                        },
                      ),
                    ),
                  ),
            body: state.questionInfo == null
                ? const CircularProgressIndicator()
                : SingleChildScrollView(
                    child: GapItems(
                      gap: 15,
                      items: [
                        IntrustorItem(
                          name: state.questionInfo?.tutor?.fullName ?? "",
                          numberOfStar: 5,
                          voidCallback: () {
                            IntrustorInfoRouteData(
                                    $extra: IntrustorInfoExtraData(
                                        intrustor: state.questionInfo?.tutor ??
                                            const UserInfoResponse()))
                                .push(context);
                          },
                        ),
                        QuestionSummary(
                          subjectName: state.questionInfo?.subject?.name ?? "",
                          price: state.questionInfo?.price ?? "",
                        ),
                        QuestionInfoBox(
                          question: state.questionInfo?.content ?? "",
                          fileResponse: state.questionInfo?.fileQuestions,
                        ),
                        const AnswerInfoBox(),
                        if (state.answer != null)
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 20, right: 50, left: 50),
                            child: CommonButton(
                              padding: const EdgeInsets.all(10),
                              child: const Text("Hoàn thành"),
                              onTap: () async {
                                final completed = await context
                                    .read<IntrustorAnswerCubit>()
                                    .completedQuestion();
                                if (completed) {
                                  await showDialog<dynamic>(
                                    context: context,
                                    builder: (ctx) {
                                      return FormRatting(
                                        rate: context
                                            .read<IntrustorAnswerCubit>()
                                            .rateQuestion,
                                      );
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        if (state.answer == null)
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 20, right: 50, left: 50),
                            child: CommonButton(
                              padding: const EdgeInsets.all(10),
                              child: const Text("Về trang chủ"),
                              onTap: () {
                                const HomeRouteData().go(context);
                              },
                            ),
                          ),
                      ],
                    ),
                  ),
          );
        }));
  }
}
