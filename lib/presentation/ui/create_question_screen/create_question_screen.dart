import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_mentor_mobile/presentation/bases/file_cubit/file_cubit.dart';
import 'package:study_mentor_mobile/presentation/shared/handlers/loading_handler/loading_manager.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/buttons/bottom_button.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/drop_down_bar/drop_down_bar.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/textfields/common_textfield.dart';
import 'package:study_mentor_mobile/utilities/launch_url.dart';
import '../../../application/services/education/education.dart';
import '../../gen/app_colors.dart';
import '../../router/router_config/router_config.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../shared/widgets/app_bar/common_app_bar.dart';
import 'blocs/create_question_cubit.dart';
import 'blocs/create_question_state.dart';
import 'widgets/fileBox.dart';

class CreateQuestionScreen extends StatefulWidget {
  const CreateQuestionScreen({super.key, required this.questionType});
  final QuestionType questionType;

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
        loadingManager: context.read<LoadingManager>(),
        educationController: context.read<EducationController>(),
        questionType: widget.questionType,
      ),
      child: Builder(builder: (context) {
        return Scaffold(
            appBar: CommonAppBar(
              title: const Text("Tạo câu hỏi"),
              color: AppColors.blue.shade50,
            ),
            body: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: SingleChildScrollView(
                      child: GapItems(
                        gap: 10,
                        crossAxisAlignmentRow: CrossAxisAlignment.start,
                        items: [
                          Text(
                            "Tiêu đề câu hỏi",
                            style: Styles.s18().withWeight(FontWeight.w600),
                          ),
                          CommonTextField(
                            onChanged: (value) => context
                                .read<CreateQuestionCubit>()
                                .onChangeTitle(value),
                          ),
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
                                previous.listFilePicker !=
                                current.listFilePicker,
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
                              await context
                                  .read<CreateQuestionCubit>()
                                  .pickFile();
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
                                    style: Styles.s18()
                                        .withWeight(FontWeight.w600),
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
                                                    title:
                                                        level.levelName ?? ""))
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
                                    style: Styles.s18()
                                        .withWeight(FontWeight.w600),
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
                                                    title:
                                                        grade.gradeName ?? ""))
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
                                    style: Styles.s18()
                                        .withWeight(FontWeight.w600),
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
                                            ?.map((subject) => DropDownBarData<
                                                    SubjectResponse>(
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
                                        .onChangeSubject(
                                            value as SubjectResponse),
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
                                    style: Styles.s18()
                                        .withWeight(FontWeight.w600),
                                  ),
                                  DropDownBar(
                                    data: [0, 1, 2, 3, 4, 5]
                                        .map((e) => DropDownBarData<int>(
                                            value: e, title: "$e sao"))
                                        .toList(),
                                    value: state.numberOfStar,
                                    onChanged: (value) => context
                                        .read<CreateQuestionCubit>()
                                        .onChangeNumberOfStar(value),
                                  ),
                                ],
                              );
                            },
                          ),
                          BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
                            buildWhen: (previous, current) =>
                                previous.findingTimeField !=
                                current.findingTimeField,
                            builder: (context, state) {
                              return GapItems(
                                gap: 10,
                                crossAxisAlignmentRow: CrossAxisAlignment.start,
                                items: [
                                  Text(
                                    "Thời gian tìm người hướng dẫn",
                                    style: Styles.s18()
                                        .withWeight(FontWeight.w600),
                                  ),
                                  DropDownBar(
                                    data: [
                                      10,
                                      20,
                                      30,
                                      45,
                                      60,
                                      120,
                                      360,
                                      720,
                                      1440
                                    ]
                                        .map((e) => DropDownBarData<int>(
                                            value: e,
                                            title: e < 60
                                                ? "$e phút"
                                                : "${e ~/ 60} giờ"))
                                        .toList(),
                                    value: state.findingTimeField,
                                    onChanged: (value) => context
                                        .read<CreateQuestionCubit>()
                                        .onChangeFindingTime(value),
                                  ),
                                ],
                              );
                            },
                          ),
                          if (widget.questionType == QuestionType.GGMEET)
                            BlocBuilder<CreateQuestionCubit,
                                CreateQuestionState>(
                              buildWhen: (previous, current) =>
                                  previous.timeMeeting != current.timeMeeting,
                              builder: (context, state) {
                                return GapItems(
                                  gap: 10,
                                  crossAxisAlignmentRow:
                                      CrossAxisAlignment.start,
                                  items: [
                                    Text(
                                      "Thời gian giải đáp câu hỏi",
                                      style: Styles.s18()
                                          .withWeight(FontWeight.w600),
                                    ),
                                    DropDownBar(
                                      data: [
                                        10,
                                        20,
                                        30,
                                        45,
                                        60,
                                        120,
                                        360,
                                        720,
                                        1440
                                      ]
                                          .map((e) => DropDownBarData<int>(
                                              value: e,
                                              title: e < 60
                                                  ? "$e phút"
                                                  : "${e ~/ 60} giờ"))
                                          .toList(),
                                      value: state.timeMeeting,
                                      onChanged: (value) => context
                                          .read<CreateQuestionCubit>()
                                          .onChangeTimeMeeting(value),
                                    ),
                                  ],
                                );
                              },
                            ),
                          BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
                            buildWhen: (previous, current) =>
                                previous.selectedVoucher !=
                                    current.selectedVoucher ||
                                previous.vouchers != current.vouchers,
                            builder: (context, state) {
                              return GapItems(
                                gap: 10,
                                crossAxisAlignmentRow: CrossAxisAlignment.start,
                                items: [
                                  Text(
                                    "Voucher",
                                    style: Styles.s18()
                                        .withWeight(FontWeight.w600),
                                  ),
                                  DropDownBar(
                                    hintText: (state.vouchers?.length ?? 0) <= 0
                                        ? "Bạn không có bất kỳ voucher nào"
                                        : null,
                                    data: state.vouchers
                                            ?.map((e) =>
                                                DropDownBarData<VoucherReponse>(
                                                    value: e,
                                                    title: e.code ?? ""))
                                            .toList() ??
                                        [],
                                    value: state.selectedVoucher,
                                    enabled: (state.vouchers?.length ?? 0) > 0,
                                    onChanged: (value) => context
                                        .read<CreateQuestionCubit>()
                                        .onChangeVoucher(
                                            value as VoucherReponse),
                                  ),
                                ],
                              );
                            },
                          ),
                          BlocListener<CreateQuestionCubit,
                              CreateQuestionState>(
                            listenWhen: (prev, curr) {
                              if (prev.canSubmit != curr.canSubmit) {
                                return true;
                              }
                              return prev.subject != curr.subject ||
                                  prev.findingTimeField !=
                                      curr.findingTimeField ||
                                  prev.numberOfStar != curr.numberOfStar ||
                                  prev.selectedVoucher != curr.selectedVoucher;
                            },
                            listener: (context, state) {
                              if (state.canSubmit) {
                                context
                                    .read<CreateQuestionCubit>()
                                    .calculatePrice();
                              }
                            },
                            child: BlocBuilder<CreateQuestionCubit,
                                CreateQuestionState>(
                              buildWhen: (previous, current) =>
                                  previous.calculatePriceReponse !=
                                      current.calculatePriceReponse ||
                                  previous.canSubmit != current.canSubmit,
                              builder: (context, state) {
                                if (state.calculatePriceReponse == null ||
                                    !state.canSubmit) {
                                  return const SizedBox();
                                } else {
                                  double priceVoucher =
                                      (state.calculatePriceReponse?.price ??
                                              0) -
                                          (state.calculatePriceReponse
                                                  ?.promoPrice ??
                                              0);
                                  return GapItems(
                                    crossAxisAlignmentRow:
                                        CrossAxisAlignment.start,
                                    items: [
                                      Text(
                                        "Thông tin thanh toán",
                                        style: Styles.s18()
                                            .withWeight(FontWeight.w600),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Tổng tiền thanh toán",
                                            style: Styles.s16()
                                                .withWeight(FontWeight.w300),
                                          ),
                                          Text(
                                            "${state.calculatePriceReponse?.price?.toStringAsFixed(0)}",
                                            style: Styles.s16()
                                                .withWeight(FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      if (priceVoucher > 0)
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Voucher giảm giá",
                                              style: Styles.s16()
                                                  .withWeight(FontWeight.w300),
                                            ),
                                            Text(
                                              "- ${priceVoucher.toStringAsFixed(0)}",
                                              style: Styles.s16()
                                                  .withWeight(FontWeight.w300),
                                            ),
                                          ],
                                        ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Tổng số tiền",
                                            style: Styles.s16()
                                                .withWeight(FontWeight.w500),
                                          ),
                                          Text(
                                            "${state.calculatePriceReponse?.promoPrice?.toStringAsFixed(0)}",
                                            style: Styles.s16()
                                                .withWeight(FontWeight.w500)
                                                .withColor(Colors.red),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                }
                              },
                            ),
                          ),
                          BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
                              buildWhen: (prev, curr) {
                            return prev.canSubmit != curr.canSubmit ||
                                prev.calculatePriceReponse !=
                                    curr.calculatePriceReponse;
                          }, builder: (context, state) {
                            return BottomButton(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              title:
                                  'Thanh toán ${state.canSubmit ? '${state.calculatePriceReponse?.promoPrice?.toStringAsFixed(0)} đồng' : ""}',
                              onPress: state.canSubmit
                                  ? () async {
                                      final response = await context
                                          .read<CreateQuestionCubit>()
                                          .createQuestion();
                                      if (response ==
                                          const CreateQuestionResponse()) {
                                        return;
                                      }

                                      final checkoutUrl = await context
                                          .read<CreateQuestionCubit>()
                                          .payment();
                                      if (checkoutUrl != "") {
                                        await appLaunchUrl(
                                            checkoutUrl, context);
                                      }

                                      DetailedQuestionRouteData(
                                              questionId:
                                                  response.questionId ?? "")
                                          .go(context);
                                    }
                                  : null,
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ));
      }),
    );
  }
}
