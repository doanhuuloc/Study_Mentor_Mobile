import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../application/services/education/education.dart';
import '../../../application/services/user/user.dart';
import '../../bases/file_cubit/file_cubit.dart';
import '../../bases/socket_cubit/socket_cubit.dart';
import '../../bases/user_cubit/user_cubit.dart';
import '../../gen/app_colors.dart';
import '../../gen/assets.gen.dart';
import '../../router/router_config/router_config.dart';
import '../../shared/base_infinite_loading/app_shimmer.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';

import '../../shared/handlers/loading_handler/loading_manager.dart';
import '../../shared/widgets/app_bar/common_app_bar.dart';
import '../../shared/widgets/app_icon_button.dart';
import '../../shared/widgets/buttons/common_button.dart';
import '../../shared/widgets/gap_items.dart';
import 'blocs/detailed_question_cubit.dart';
import 'blocs/detailed_question_state.dart';
import 'widgets/answer_info_box.dart';
import 'widgets/form_ratting.dart';
import 'widgets/intrustor_item.dart';
import 'widgets/question_info_box.dart';
import 'widgets/question_summary.dart';

class DetailedQuestionScreen extends StatefulWidget {
  const DetailedQuestionScreen({
    super.key,
    required this.questionId,
    this.tutor,
  });

  final String questionId;
  final UserInfoResponse? tutor;
  @override
  State<DetailedQuestionScreen> createState() => _DetailedQuestionScreenState();
}

class _DetailedQuestionScreenState extends State<DetailedQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailedQuestionCubit>(
        create: (context) => DetailedQuestionCubit(
            userId: context.read<UserCubit>().state.detail?.id ?? "",
            tutor: widget.tutor,
            failureHandlerManager: context.read<FailureHandlerManager>(),
            fileCubit: context.read<FileCubit>(),
            loadingManager: context.read<LoadingManager>(),
            educationController: context.read<EducationController>(),
            socketCubit: context.read<SocketCubit>(),
            questionId: widget.questionId),
        child: BlocBuilder<DetailedQuestionCubit, DetailedQuestionState>(
            builder: (context, state) {
          return Scaffold(
            appBar: CommonAppBar(
              title: const Text("Chi tiết câu hỏi"),
              color: AppColors.blue.shade50,
              actions: [
                if (state.questionInfo?.status != QuestionStatus.NEW &&
                    state.questionInfo?.status != QuestionStatus.PENDING &&
                    !state.loading)
                  AppIconButton(
                    icon: SvgPicture.asset(
                      Assets.svgs.report.path,
                      height: 30,
                      width: 30,
                      color: AppColors.black,
                    ),
                    onTap: () {
                      ReportQuestionRouteData(
                              $extra: state.questionInfo ??
                                  const GetQuestionInfoResponse())
                          .push(context);
                    },
                  )
              ],
            ),
            floatingActionButton: state.questionInfo?.status ==
                        QuestionStatus.NEW ||
                    state.questionInfo?.status == QuestionStatus.PENDING ||
                    state.loading
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
            body: Column(
              children: [
                Expanded(
                  child: RefreshIndicator(
                    color: Colors.amber,
                    onRefresh: () async {
                      context.read<DetailedQuestionCubit>().getQuestion();
                    },
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: AppShimmer(
                        enabled: state.loading,
                        child: GapItems(
                          gap: 15,
                          items: [
                            if (state.questionInfo?.status !=
                                    QuestionStatus.NEW &&
                                state.questionInfo?.status !=
                                    QuestionStatus.PENDING)
                              IntrustorItem(
                                loading: state.loading,
                                name: state.questionInfo?.tutor?.fullName ?? "",
                                numberOfStar: 5,
                                voidCallback: () {
                                  IntrustorInfoRouteData(
                                          $extra: IntrustorInfoExtraData(
                                              intrustor:
                                                  state.questionInfo?.tutor ??
                                                      const UserInfoResponse()))
                                      .push(context);
                                },
                              )
                            else
                              const SizedBox(),
                            QuestionSummary(
                              loading: state.loading,
                              subjectName:
                                  state.questionInfo?.subject?.name ?? "",
                              price: state.questionInfo?.price ?? "",
                            ),
                            QuestionInfoBox(
                              loading: state.loading,
                              question: state.questionInfo?.content ?? "",
                              fileResponse: state.questionInfo?.fileQuestions,
                            ),
                            if (state.questionInfo?.status !=
                                    QuestionStatus.NEW &&
                                state.questionInfo?.status !=
                                    QuestionStatus.PENDING)
                              const AnswerInfoBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                if (state.questionInfo?.status == QuestionStatus.NEW)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 20, right: 50, left: 50),
                    child: CommonButton(
                      padding: const EdgeInsets.all(10),
                      child: const Text("Tìm người hướng dẫn"),
                      onTap: () {
                        if (state.questionInfo?.subject?.id != null) {
                          FindIntrustorRouteData(
                                  $extra: FindIntrustorExtraData(
                                    questionId: widget.questionId,
                                    subjectId:
                                        state.questionInfo?.subject?.id ?? "",
                                  ),
                                  questionId: widget.questionId)
                              .push(context);
                        }
                      },
                    ),
                  ),
                if (state.questionInfo?.status == QuestionStatus.ANSWERED)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 20, right: 50, left: 50),
                    child: CommonButton(
                      padding: const EdgeInsets.all(10),
                      child: const Text("Hoàn thành"),
                      onTap: () async {
                        final completed = await context
                            .read<DetailedQuestionCubit>()
                            .completedQuestion();
                        if (completed) {
                          if (await showDialog<dynamic>(
                            context: context,
                            builder: (ctx) {
                              return FormRatting(
                                rate: context
                                    .read<DetailedQuestionCubit>()
                                    .rateQuestion,
                                name: state.questionInfo?.tutor?.fullName ?? "",
                              );
                            },
                          )) {
                            const HomeRouteData().go(context);
                          }
                        }
                      },
                    ),
                  ),
                if (state.questionInfo?.status == QuestionStatus.DONE ||
                    state.questionInfo?.status == QuestionStatus.ACCEPTED)
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
          );
        }));
  }
}
