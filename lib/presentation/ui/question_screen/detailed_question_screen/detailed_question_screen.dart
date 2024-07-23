import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/ui/question_screen/report_question_screen/blocs/report_question_state.dart';

import '../../../../application/services/education/education.dart';
import '../../../../application/services/user/user.dart';
import '../../../../utilities/launch_url.dart';
import '../../../bases/file_cubit/file_cubit.dart';
import '../../../bases/socket_cubit/socket_cubit.dart';
import '../../../bases/user_cubit/user_cubit.dart';
import '../../../gen/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../router/router_config/router_config.dart';
import '../../../shared/base_infinite_loading/app_shimmer.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';

import '../../../shared/handlers/loading_handler/loading_manager.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/app_bar/common_app_bar.dart';
import '../../../shared/widgets/app_icon_button.dart';
import '../../../shared/widgets/buttons/common_button.dart';
import '../../../shared/widgets/gap_items.dart';
import '../../../utilities/formatCurency.dart';
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
              title: Text(S.of(context).detailedQuestion),
              color: AppColors.blue.shade50,
              actions: [
                if ((state.questionInfo?.status == QuestionStatus.ANSWERED ||
                        state.questionInfo?.status == QuestionStatus.DONE) &&
                    !state.loading)
                  AppIconButton(
                    icon: SvgPicture.asset(
                      Assets.svgs.report.path,
                      height: 30,
                      width: 30,
                      color: AppColors.black,
                    ),
                    onTap: () async {
                      if (state.questionInfo?.tutor?.id != null) {
                        final reportId = await ReportQuestionRouteData(
                            $extra: ReportQuestionProps(
                          id: state.questionInfo?.reportId,
                          questionId: widget.questionId,
                          tutorId: state.questionInfo?.tutor?.id ?? "",
                        )).push(context);
                        if (reportId != null) {
                          if (!context.mounted) {
                            return;
                          }
                          context
                              .read<DetailedQuestionCubit>()
                              .changeReportId(reportId);
                        }
                      }
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
                      physics: const AlwaysScrollableScrollPhysics(),
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
                            if (!state.loading &&
                                state.questionInfo?.status ==
                                    QuestionStatus.NEW &&
                                state.questionInfo?.isPaid != true)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    S.of(context).loadScreen,
                                    textAlign: TextAlign.center,
                                    style: Styles.s16()
                                        .withWeight(FontWeight.w600),
                                  ),
                                ),
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
                            ActivityButton(
                              questionId: widget.questionId,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}

class ActivityButton extends StatelessWidget {
  const ActivityButton({super.key, required this.questionId});
  final String questionId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailedQuestionCubit, DetailedQuestionState>(
      buildWhen: (previous, current) =>
          previous.questionInfo?.status != current.questionInfo?.status,
      builder: (context, state) {
        return Column(
          children: [
            if (state.questionInfo?.status == QuestionStatus.NEW)
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 20, right: 50, left: 50),
                child: CommonButton(
                  padding: const EdgeInsets.all(10),
                  child: Text(state.questionInfo?.isPaid == true
                      ? S.of(context).findIntructor
                      : S.of(context).pay(formatCurrency(
                          double.parse(state.questionInfo?.price ?? "0"),
                          context))),
                  onTap: () async {
                    if (state.questionInfo?.subject?.id != null) {
                      if (state.questionInfo?.isPaid == true) {
                        if (await FindIntrustorRouteData(
                                $extra: FindIntrustorExtraData(
                                  questionId: questionId,
                                  subjectId:
                                      state.questionInfo?.subject?.id ?? "",
                                ),
                                questionId: questionId)
                            .push(context)) {
                          if (!context.mounted) {
                            return;
                          }
                          context.read<DetailedQuestionCubit>().fetchData();
                        }
                      } else {
                        final checkoutUrl = await context
                            .read<DetailedQuestionCubit>()
                            .payment();
                        if (checkoutUrl != "") {
                          await appLaunchUrl(checkoutUrl, context);
                        }
                      }
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
                  child: Text(S.of(context).done),
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
                  child: Text(S.of(context).goHomePage),
                  onTap: () {
                    const HomeRouteData().go(context);
                  },
                ),
              ),
          ],
        );
      },
    );
  }
}
