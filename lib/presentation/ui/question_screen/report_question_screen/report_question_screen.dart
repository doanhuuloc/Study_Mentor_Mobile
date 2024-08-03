import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/shared/base_infinite_loading/app_shimmer.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/app_icon_button.dart';
import '../../../../application/services/app/app_config/app_config.dart';
import '../../../../application/services/education/education.dart';
import '../../../bases/file_cubit/file_cubit.dart';
import '../../../bases/user_cubit/user_cubit.dart';
import '../../../gen/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../shared/handlers/loading_handler/loading_manager.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/app_bar/common_app_bar.dart';

import '../../../shared/widgets/buttons/bottom_button.dart';
import '../../../shared/widgets/fileBox.dart';
import '../../../shared/widgets/gap_items.dart';
import '../../../shared/widgets/textfields/common_textfield.dart';
import '../../../utilities/download_file.dart';
import 'blocs/report_question_cubit.dart';
import 'blocs/report_question_state.dart';

class ReportQuestionScreen extends StatefulWidget {
  const ReportQuestionScreen({super.key, required this.reportQuestion});
  final ReportQuestionProps reportQuestion;

  @override
  State<ReportQuestionScreen> createState() => _ReportQuestionScreenState();
}

class _ReportQuestionScreenState extends State<ReportQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReportQuestionCubit>(
      create: (context) => ReportQuestionCubit(
        userId: context.read<UserCubit>().state.detail?.id ?? "",
        reportQuestion: widget.reportQuestion,
        fileCubit: context.read<FileCubit>(),
        failureHandlerManager: context.read<FailureHandlerManager>(),
        loadingManager: context.read<LoadingManager>(),
        educationController: context.read<EducationController>(),
      ),
      child: BlocBuilder<ReportQuestionCubit, ReportQuestionState>(
        builder: (context, state) {
          return BlocListener<ReportQuestionCubit, ReportQuestionState>(
            listener: (context, state) async {
              if (state.reportFLowCompleted == true) {
                await AlertRouteData(content: S.of(context).reportSuccess)
                    .push(context);
                if (!context.mounted) {
                  return;
                }
                context.pop(state.reportQuestionResponse?.id);
              }
            },
            child: Scaffold(
                appBar: CommonAppBar(
                  title: Text(S.of(context).reportIntructor),
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
                                S.of(context).reportContent,
                                style: Styles.s18().withWeight(FontWeight.w600),
                              ),
                              if (state.loading)
                                AppShimmer(
                                  enabled: true,
                                  child: Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(4)),
                                  ),
                                )
                              else
                                CommonTextField(
                                  minLines: 4,
                                  maxLines: 4,
                                  textInputAction: TextInputAction.newline,
                                  initialValue:
                                      state.reportQuestionResponse?.content ??
                                          "",
                                  enable: state.reportQuestionResponse == null,
                                  onChanged: (value) => context
                                      .read<ReportQuestionCubit>()
                                      .onChangeContent(value),
                                ),
                              if ((state.reportQuestionResponse?.attachFiles ??
                                          [])
                                      .isNotEmpty &&
                                  !state.loading)
                                Text(
                                  S.of(context).reportFile,
                                  style:
                                      Styles.s18().withWeight(FontWeight.w600),
                                ),
                              if (state.loading)
                                AppShimmer(
                                    enabled: true,
                                    child: GapItems(
                                      items: [
                                        Container(
                                          height: 60,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          height: 60,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          height: 60,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    )),
                              ...((context
                                          .read<ReportQuestionCubit>()
                                          .state
                                          .reportQuestionResponse
                                          ?.attachFiles ??
                                      [])
                                  .map((e) => FileBox(
                                        name: e.fileName ?? "",
                                        icon: AppIconButton(
                                          icon: Assets.svgs.uploadFile.svg(
                                            color: Colors.black,
                                            height: 25,
                                            width: 15,
                                          ),
                                          onTap: () {
                                            if (e.fileKey != null &&
                                                e.fileName != null) {
                                              downloadFile(
                                                  url:
                                                      "${context.read<AppConfig>().imagePath}/${e.fileKey}",
                                                  fileName: "${e.fileName}");
                                            }
                                          },
                                        ),
                                      ))
                                  .toList()),
                              BlocBuilder<ReportQuestionCubit,
                                  ReportQuestionState>(
                                buildWhen: (previous, current) =>
                                    previous.listFilePicker !=
                                    current.listFilePicker,
                                builder: (context, state) {
                                  return Column(
                                      children: context
                                          .read<ReportQuestionCubit>()
                                          .state
                                          .listFilePicker
                                          .map(
                                            (e) => FileBox(
                                              name: e.files.single.name,
                                              icon: IconButton(
                                                icon: const Icon(
                                                    Icons.cancel_outlined),
                                                onPressed: () => context
                                                    .read<ReportQuestionCubit>()
                                                    .removeFilePicker(e),
                                              ),
                                            ),
                                          )
                                          .toList());
                                },
                              ),
                              if (state.reportQuestionResponse == null &&
                                  !state.loading)
                                InkWell(
                                  onTap: () async {
                                    await context
                                        .read<ReportQuestionCubit>()
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (state.reportQuestionResponse == null && !state.loading)
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 20, right: 50, left: 50),
                        child: BottomButton(
                          padding: const EdgeInsets.all(10),
                          onPress: state.canSubmit
                              ? () async {
                                  await context
                                      .read<ReportQuestionCubit>()
                                      .reportTutor();
                                }
                              : null,
                          title: S.of(context).send,
                        ),
                      ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
