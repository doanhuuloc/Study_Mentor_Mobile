import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_mentor_mobile/presentation/bases/file_cubit/file_cubit.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/drop_down_bar/drop_down_bar.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/textfields/common_textfield.dart';

import '../../../application/services/education/education.dart';
import '../../gen/app_colors.dart';
import '../../router/router_config/router_config.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../shared/widgets/app_bar/common_app_bar.dart';
import '../../shared/widgets/buttons/primary_button.dart';
import 'blocs/create_question_cubit.dart';
import 'blocs/create_question_state.dart';
import 'widgets/fileBox.dart';

class CreateQuestionScreen extends StatefulWidget {
  const CreateQuestionScreen({super.key});

  @override
  State<CreateQuestionScreen> createState() => _CreateQuestionScreenState();
}

class _CreateQuestionScreenState extends State<CreateQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateQuestionCubit>(
      create: (context) => CreateQuestionCubit(
        fileCubit: context.read<FileCubit>(),
        failureHandlerManager: context.read<FailureHandlerManager>(),
        educationController: context.read<EducationController>(),
      ),
      child: Builder(builder: (context) {
        return Scaffold(
            appBar: CommonAppBar(
              title: const Text("Tạo câu hỏi"),
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
                        "Nội dung câu hỏi",
                        style: Styles.s18().withWeight(FontWeight.w600),
                      ),
                      CommonTextField(
                        minLines: 4,
                        maxLines: 4,
                        textInputAction: TextInputAction.newline,
                        onChanged: (value) => context
                            .read<CreateQuestionCubit>()
                            .onChangeContentQuestion(value),
                      ),
                      Text(
                        "File câu hỏi",
                        style: Styles.s18().withWeight(FontWeight.w600),
                      ),
                      BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
                        buildWhen: (previous, current) =>
                            previous.listFilePicker != current.listFilePicker,
                        builder: (context, state) {
                          return Column(
                              children: context
                                  .read<CreateQuestionCubit>()
                                  .state
                                  .listFilePicker
                                  .map(
                                    (e) => FileBox(
                                      file: e,
                                      delete: () => context
                                          .read<CreateQuestionCubit>()
                                          .removeFilePicker(e),
                                    ),
                                  )
                                  .toList());
                        },
                      ),
                      InkWell(
                        onTap: () async {
                          await context.read<CreateQuestionCubit>().pickFile();
                        },
                        child: DottedBorder(
                            color: Theme.of(context).primaryColor,
                            borderType: BorderType.RRect,
                            padding: const EdgeInsets.all(12),
                            radius: const Radius.circular(6),
                            dashPattern: const [6],
                            strokeWidth: 2,
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/svgs/upload_file.svg",
                                height: 50,
                                width: 50,
                              ),
                            )),
                      ),
                      BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
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
                                        .read<CreateQuestionCubit>()
                                        .state
                                        .structure
                                        ?.map((level) =>
                                            DropDownBarData<LevelResponse>(
                                                value: level,
                                                title: level.levelName ?? ""))
                                        .toList() ??
                                    [],
                                value: context
                                    .read<CreateQuestionCubit>()
                                    .state
                                    .level,
                                onChanged: (value) => context
                                    .read<CreateQuestionCubit>()
                                    .onChangeLevel(value as LevelResponse),
                              ),
                            ],
                          );
                        },
                      ),
                      BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
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
                                        .read<CreateQuestionCubit>()
                                        .state
                                        .level !=
                                    null,
                                data: context
                                        .read<CreateQuestionCubit>()
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
                                    .read<CreateQuestionCubit>()
                                    .state
                                    .grade,
                                onChanged: (value) => context
                                    .read<CreateQuestionCubit>()
                                    .onChangeGrade(value as GradeResponse),
                              ),
                            ],
                          );
                        },
                      ),
                      BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
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
                                        .read<CreateQuestionCubit>()
                                        .state
                                        .grade !=
                                    null,
                                data: context
                                        .read<CreateQuestionCubit>()
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
                                    .read<CreateQuestionCubit>()
                                    .state
                                    .subject,
                                onChanged: (value) => context
                                    .read<CreateQuestionCubit>()
                                    .onChangeSubject(value as SubjectResponse),
                              ),
                            ],
                          );
                        },
                      ),
                      BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
                        buildWhen: (previous, current) =>
                            previous.numberOfStar != current.numberOfStar,
                        builder: (context, state) {
                          return GapItems(
                            gap: 10,
                            crossAxisAlignmentRow: CrossAxisAlignment.start,
                            items: [
                              Text(
                                "Yêu cầu số sao người hướng dẫn",
                                style: Styles.s18().withWeight(FontWeight.w600),
                              ),
                              DropDownBar(
                                data: [0, 1, 2, 3, 4, 5]
                                    .map((e) => DropDownBarData<int>(
                                        value: e, title: "$e sao"))
                                    .toList(),
                                value: context
                                    .read<CreateQuestionCubit>()
                                    .state
                                    .numberOfStar,
                                onChanged: (value) => context
                                    .read<CreateQuestionCubit>()
                                    .onChangeNumberOfStar(value),
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
                            .read<CreateQuestionCubit>()
                            .onChangeFindingTime(value),
                      ),
                      Center(
                        child: BlocBuilder<CreateQuestionCubit,
                            CreateQuestionState>(buildWhen: (prev, curr) {
                          return prev.canSubmit != curr.canSubmit;
                        }, builder: (context, state) {
                          return PrimaryButton.round(
                            onPressed: state.canSubmit
                                ? () async {
                                    final response = await context
                                        .read<CreateQuestionCubit>()
                                        .createQuestion();
                                    if (response ==
                                        const CreateQuestionResponse()) {
                                      return;
                                    }
                                    final subjectId = context
                                        .read<CreateQuestionCubit>()
                                        .state
                                        .subject
                                        ?.id;
                                    if (await ConfirmRouteData(
                                      title:
                                          "Bạn cần thanh toán ${response.price?.toStringAsFixed(0)} để tiếp tục giải đáp câu hỏi",
                                      content: "",
                                      rejectTitle: "Hủy",
                                      acceptTitle: "Thanh toán",
                                    ).push(context)) {
                                      FindIntrustorRouteData(
                                        $extra: FindIntrustorExtraData(
                                          questionId: response.questionId ?? "",
                                          subjectId: subjectId ?? "",
                                        ),
                                      ).pushReplacement(context);
                                    }
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
