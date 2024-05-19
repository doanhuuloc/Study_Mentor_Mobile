import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/bases/file_cubit/file_cubit.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/drop_down_bar/drop_down_bar.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/textfields/common_textfield.dart';

import '../../../application/services/education/education.dart';
import '../../gen/app_colors.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../shared/widgets/app_bar/common_app_bar.dart';
import '../../shared/widgets/buttons/primary_button.dart';
import 'blocs/create_ggmeet_cubit.dart';
import 'blocs/create_ggmeet_state.dart';

class CreateGGMeetScreen extends StatefulWidget {
  const CreateGGMeetScreen({super.key});

  @override
  State<CreateGGMeetScreen> createState() => _CreateGGMeetScreenState();
}

class _CreateGGMeetScreenState extends State<CreateGGMeetScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateGGMeetCubit>(
      create: (context) => CreateGGMeetCubit(
        fileCubit: context.read<FileCubit>(),
        failureHandlerManager: context.read<FailureHandlerManager>(),
        educationController: context.read<EducationController>(),
      ),
      child: Builder(builder: (context) {
        return Scaffold(
            appBar: CommonAppBar(
              title: const Text("Tạo google meet"),
              color: AppColors.blue.shade50,
            ),
            body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SingleChildScrollView(
                  child: GapItems(
                    gap: 10,
                    crossAxisAlignmentRow: CrossAxisAlignment.start,
                    items: [
                      Text(
                        "Thời gian giải đáp",
                        style: Styles.s18().withWeight(FontWeight.w600),
                      ),
                      CommonTextField(
                        onChanged: (value) => context
                            .read<CreateGGMeetCubit>()
                            .onChangeAnswerTime(value),
                      ),
                      BlocBuilder<CreateGGMeetCubit, CreateGGMeetState>(
                        buildWhen: (previous, current) =>
                            previous.level != current.level ||
                            previous.structure != current.structure,
                        builder: (context, state) {
                          return GapItems(
                            gap: 10,
                            crossAxisAlignmentRow: CrossAxisAlignment.start,
                            items: [
                              Text(
                                "Cấp độ câu hỏi",
                                style: Styles.s18().withWeight(FontWeight.w600),
                              ),
                              DropDownBar(
                                enabled: true,
                                data: context
                                        .read<CreateGGMeetCubit>()
                                        .state
                                        .structure
                                        ?.map((level) =>
                                            DropDownBarData<LevelResponse>(
                                                value: level,
                                                title: level.levelName ?? ""))
                                        .toList() ??
                                    [],
                                value: context
                                    .read<CreateGGMeetCubit>()
                                    .state
                                    .level,
                                onChanged: (value) => context
                                    .read<CreateGGMeetCubit>()
                                    .onChangeLevel(value as LevelResponse),
                              ),
                            ],
                          );
                        },
                      ),
                      BlocBuilder<CreateGGMeetCubit, CreateGGMeetState>(
                        buildWhen: (previous, current) =>
                            previous.level != current.level ||
                            previous.grade != current.grade,
                        builder: (context, state) {
                          return GapItems(
                            gap: 10,
                            crossAxisAlignmentRow: CrossAxisAlignment.start,
                            items: [
                              Text(
                                "Khối lớp",
                                style: Styles.s18().withWeight(FontWeight.w600),
                              ),
                              DropDownBar(
                                enabled: context
                                        .read<CreateGGMeetCubit>()
                                        .state
                                        .level !=
                                    null,
                                data: context
                                        .read<CreateGGMeetCubit>()
                                        .state
                                        .level
                                        ?.grades
                                        ?.map((grade) =>
                                            DropDownBarData<GradeResponse>(
                                                value: grade,
                                                title: grade.gradeName ?? ""))
                                        .toList() ??
                                    [],
                                value: context
                                    .read<CreateGGMeetCubit>()
                                    .state
                                    .grade,
                                onChanged: (value) => context
                                    .read<CreateGGMeetCubit>()
                                    .onChangeGrade(value as GradeResponse),
                              ),
                            ],
                          );
                        },
                      ),
                      BlocBuilder<CreateGGMeetCubit, CreateGGMeetState>(
                        buildWhen: (previous, current) =>
                            previous.level != current.level ||
                            previous.grade != current.grade ||
                            previous.subject != current.subject,
                        builder: (context, state) {
                          return GapItems(
                            gap: 10,
                            crossAxisAlignmentRow: CrossAxisAlignment.start,
                            items: [
                              Text(
                                "Môn học",
                                style: Styles.s18().withWeight(FontWeight.w600),
                              ),
                              DropDownBar(
                                enabled: context
                                        .read<CreateGGMeetCubit>()
                                        .state
                                        .grade !=
                                    null,
                                data: context
                                        .read<CreateGGMeetCubit>()
                                        .state
                                        .grade
                                        ?.subjects
                                        ?.map((subject) =>
                                            DropDownBarData<SubjectResponse>(
                                                value: subject,
                                                title: subject.name ?? ""))
                                        .toList() ??
                                    [],
                                value: context
                                    .read<CreateGGMeetCubit>()
                                    .state
                                    .subject,
                                onChanged: (value) => context
                                    .read<CreateGGMeetCubit>()
                                    .onChangeSubject(value as SubjectResponse),
                              ),
                            ],
                          );
                        },
                      ),
                      Text(
                        "Thời gian tìm người hướng dẫn",
                        style: Styles.s18().withWeight(FontWeight.w600),
                      ),
                      CommonTextField(
                        maxLines: 1,
                        onChanged: (value) => context
                            .read<CreateGGMeetCubit>()
                            .onChangeFindingTime(value),
                      ),
                      Center(
                        child:
                            BlocBuilder<CreateGGMeetCubit, CreateGGMeetState>(
                                buildWhen: (prev, curr) {
                          return prev.canSubmit != curr.canSubmit;
                        }, builder: (context, state) {
                          return PrimaryButton.round(
                            onPressed: state.canSubmit
                                ? () async {
                                    // await context
                                    //     .read<CreateGGMeetCubit>()
                                    //     .CreateGGMeet();
                                    // final String price = context
                                    //         .read<CreateGGMeetCubit>()
                                    //         .state
                                    //         .CreateGGMeetResponse
                                    //         ?.price
                                    //         ?.toStringAsFixed(0) ??
                                    //     "";
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: Text(
                                          "Bạn cần thanh toán 100đ để tiếp tục giải đáp câu hỏi",
                                          style: Styles.s15(),
                                        ),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () {
                                                // const FindIntrustorRouteData()
                                                //     .go(context);
                                              },
                                              child: Text(
                                                "Thanh toán",
                                                style: Styles.s16().withWeight(
                                                    FontWeight.w600),
                                              ))
                                        ],
                                      ),
                                    );
                                  }
                                : null,
                            title: "Tiếp tục",
                          );
                        }),
                      ),
                    ],
                  ),
                )));
      }),
    );
  }
}
