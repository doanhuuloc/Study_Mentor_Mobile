import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import '../../../../application/services/education/education.dart';
import '../../../bases/file_cubit/file_cubit.dart';
import '../../../bases/user_cubit/user_cubit.dart';
import '../../../gen/app_colors.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../shared/handlers/loading_handler/loading_manager.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/app_bar/common_app_bar.dart';

import '../../../shared/widgets/buttons/bottom_button.dart';
import '../../../shared/widgets/gap_items.dart';
import '../../../shared/widgets/textfields/common_textfield.dart';
import 'blocs/report_question_cubit.dart';
import 'blocs/report_question_state.dart';
import 'widgets/fileBox.dart';

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
                context.pop();
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
                              CommonTextField(
                                minLines: 4,
                                maxLines: 4,
                                textInputAction: TextInputAction.newline,
                                onChanged: (value) => context
                                    .read<ReportQuestionCubit>()
                                    .onChangeContent(value),
                              ),
                              Text(
                                S.of(context).reportFile,
                                style: Styles.s18().withWeight(FontWeight.w600),
                              ),
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
                                              file: e,
                                              delete: () => context
                                                  .read<ReportQuestionCubit>()
                                                  .removeFilePicker(e),
                                            ),
                                          )
                                          .toList());
                                },
                              ),
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
