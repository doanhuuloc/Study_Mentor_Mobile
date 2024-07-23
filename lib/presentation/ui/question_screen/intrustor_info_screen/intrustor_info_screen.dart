import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/shared/base_infinite_loading/app_shimmer.dart';
import 'package:study_mentor_mobile/presentation/shared/handlers/loading_handler/loading_manager.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/app_bar/common_app_bar.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/buttons/primary_button.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';
import '../../../../application/services/education/education.dart';
import '../../../../application/services/user/user.dart';
import '../../../bases/socket_cubit/socket_cubit.dart';
import '../../../gen/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';

import 'blocs/intrustor_info_cubit.dart';
import 'blocs/intrustor_info_state.dart';

class IntrustorInfoScreen extends StatefulWidget {
  const IntrustorInfoScreen(
      {super.key, required this.intrustor, this.questionId});
  final UserInfoResponse intrustor;
  final String? questionId;

  @override
  State<IntrustorInfoScreen> createState() => _IntrustorInfoScreenState();
}

class _IntrustorInfoScreenState extends State<IntrustorInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<IntrustorInfoCubit>(
        create: (context) => IntrustorInfoCubit(
              failureHandlerManager: context.read<FailureHandlerManager>(),
              educationController: context.read<EducationController>(),
              socketCubit: context.read<SocketCubit>(),
              loadingManager: context.read<LoadingManager>(),
            ),
        child: Builder(builder: (context) {
          context.read<IntrustorInfoCubit>();
          return BlocBuilder<IntrustorInfoCubit, IntrustorInfoState>(
            builder: (context, state) {
              return BlocListener<IntrustorInfoCubit, IntrustorInfoState>(
                listenWhen: (previous, current) =>
                    state.isAccepted != state.isAccepted,
                listener: (context, state) {
                  if (state.isAccepted == 1) {
                    DetailedQuestionRouteData(
                            questionId: widget.questionId ?? "")
                        .go(context);
                  } else {
                    AlertRouteData(content: S.of(context).rejectAnswered)
                        .push(context);
                  }
                },
                child: Scaffold(
                  appBar: CommonAppBar(
                    title: Text(S.of(context).intructor),
                    color: AppColors.blue.shade50,
                  ),
                  backgroundColor: AppColors.blue.shade50,
                  body: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: GapItems(
                              crossAxisAlignmentRow: CrossAxisAlignment.start,
                              gap: 20,
                              items: [
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  alignment: Alignment.center,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 100,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(widget
                                                        .intrustor
                                                        .avatar
                                                        ?.fileKey ??
                                                    Assets.images.ai.path),
                                                fit: BoxFit.fill)),
                                      ),
                                      const SizedBox(height: 10),
                                      RatingBarIndicator(
                                        itemBuilder: (context, index) =>
                                            const Icon(Icons.star,
                                                color: Colors.orange),
                                        rating:
                                            widget.intrustor.averageRate ?? 0,
                                        itemSize: 30,
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        widget.intrustor.fullName ?? "",
                                        style: Styles.s20()
                                            .withWeight(FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        S.of(context).personalInfomation,
                                        style: Styles.s18()
                                            .withWeight(FontWeight.w600),
                                      ),
                                      GapItems(
                                        gap: 10,
                                        items: [
                                          LineInfo(
                                              title: S.of(context).email,
                                              content:
                                                  widget.intrustor.email ?? ""),
                                          if (widget.intrustor.phone != null ||
                                              widget.intrustor.phone != "")
                                            LineInfo(
                                                title: S.of(context).phone,
                                                content:
                                                    widget.intrustor.phone ??
                                                        ""),
                                          if (widget.intrustor.dateOfBirth !=
                                              null)
                                            LineInfo(
                                                title:
                                                    S.of(context).dateOfbirth,
                                                content: widget.intrustor
                                                        .dateOfBirth ??
                                                    ""),
                                          if (widget.intrustor.gender != null)
                                            LineInfo(
                                                title: S.of(context).gender,
                                                content:
                                                    widget.intrustor.gender == 0
                                                        ? S.of(context).male
                                                        : S.of(context).female),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox()

                                // const Text(
                                //   "Thông tin Giáo dục quan tâm",
                                //   style: TextStyle(
                                //       fontWeight: FontWeight.bold, fontSize: 20),
                                // ),
                                // const SizedBox(height: 20),
                                // LineInfo(
                                //     title: "Cấp bậc",
                                //     content: tutorEducationInterest["levels"][0]["name"]),
                                // LineInfo(
                                //     title: "Khối/Lớp",
                                //     content: tutorEducationInterest["grades"][0]["name"]),
                                // LineInfo(
                                //     title: "Chủ đề",
                                //     content: tutorEducationInterest["subjects"][0]
                                //         ["name"])
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (widget.questionId != null)
                        AppShimmer(
                          enabled: state.waittingTutor,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: PrimaryButton.square(
                              title: state.waittingTutor
                                  ? ""
                                  : S.of(context).accept,
                              textStyle:
                                  Styles.s18().withWeight(FontWeight.w600),
                              onPressed: () {
                                context
                                    .read<IntrustorInfoCubit>()
                                    .pickIntrustor(
                                      PickIntrustorRequest(
                                        tutorId: widget.intrustor.id ?? "",
                                        questionId: widget.questionId ?? "",
                                      ),
                                    );
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          );
        }));
  }
}

class LineInfo extends StatelessWidget {
  const LineInfo({super.key, required this.title, required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.s16(),
        ),
        Text(
          content,
          textAlign: TextAlign.right,
          style: Styles.s16(),
        ),
      ],
    );
  }
}
