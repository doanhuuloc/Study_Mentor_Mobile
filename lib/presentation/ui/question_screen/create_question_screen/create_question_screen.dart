import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/bases/file_cubit/file_cubit.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/shared/handlers/loading_handler/loading_manager.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/buttons/bottom_button.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/textfields/common_textfield.dart';
import 'package:study_mentor_mobile/presentation/ui/question_screen/create_question_screen/widgets/payment_info.dart';
import 'package:study_mentor_mobile/presentation/ui/question_screen/create_question_screen/widgets/select_file.dart';
import 'package:study_mentor_mobile/presentation/ui/question_screen/create_question_screen/widgets/select_time_metting.dart';
import 'package:study_mentor_mobile/presentation/ui/question_screen/create_question_screen/widgets/select_voucher.dart';
import 'package:study_mentor_mobile/utilities/launch_url.dart';
import '../../../../application/services/education/education.dart';
import '../../../gen/app_colors.dart';
import '../../../router/router_config/router_config.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../shared/widgets/app_bar/common_app_bar.dart';
import '../../../utilities/formatCurency.dart';
import 'blocs/create_question_cubit.dart';
import 'blocs/create_question_state.dart';
import 'widgets/select_education_structure.dart';
import 'widgets/select_number_star.dart';
import 'widgets/select_time_finding.dart';

class CreateQuestionScreen extends StatefulWidget {
  const CreateQuestionScreen({super.key, required this.questionType});
  final QuestionType questionType;

  @override
  State<CreateQuestionScreen> createState() => _CreateQuestionScreenState();
}

class _CreateQuestionScreenState extends State<CreateQuestionScreen> {
  // final QuillController _controller = QuillController.basic();

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
              title: Text(S.of(context).createQuestion),
              color: AppColors.blue.shade50,
            ),
            body: Column(
              children: [
                // QuillToolbar.simple(
                //   configurations: QuillSimpleToolbarConfigurations(

                //     controller: _controller,
                //     sharedConfigurations: const QuillSharedConfigurations(
                //       locale: Locale('en'),
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: QuillEditor.basic(
                //     configurations: QuillEditorConfigurations(
                //       controller: _controller,
                //       readOnly: false,
                //       sharedConfigurations: const QuillSharedConfigurations(
                //         locale: Locale('en'),
                //       ),
                //     ),
                //   ),
                // )
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
                            S.of(context).titleQuestion,
                            style: Styles.s18().withWeight(FontWeight.w600),
                          ),
                          CommonTextField(
                            onChanged: (value) => context
                                .read<CreateQuestionCubit>()
                                .onChangeTitle(value),
                          ),
                          Text(
                            S.of(context).contentQuestion,
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
                          const SelectFile(),
                          const SelectEducationStructure(),
                          const SelectNumberStar(),
                          const SelectTimeFinding(),
                          if (widget.questionType == QuestionType.GGMEET)
                            const SelectTimeMetting(),
                          const SelectVoucher(),
                          const PaymentInfo(),
                          const _PayButton(),
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

class _PayButton extends StatelessWidget {
  const _PayButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
        buildWhen: (prev, curr) {
      return prev.canSubmit != curr.canSubmit ||
          prev.calculatePriceReponse != curr.calculatePriceReponse;
    }, builder: (context, state) {
      return BottomButton(
        padding: const EdgeInsets.symmetric(vertical: 20),
        title:
            'Thanh toán ${state.canSubmit ? formatCurrency(state.calculatePriceReponse?.promoPrice ?? 0, context) : ""}',
        onPress: state.canSubmit
            ? () async {
                final response =
                    await context.read<CreateQuestionCubit>().createQuestion();
                if (response == const CreateQuestionResponse()) {
                  return;
                }

                if (!context.mounted) {
                  return;
                }

                final checkoutUrl =
                    await context.read<CreateQuestionCubit>().payment();
                if (checkoutUrl != "") {
                  if (!context.mounted) {
                    return;
                  }
                  await appLaunchUrl(checkoutUrl, context);
                }

                DetailedQuestionRouteData(questionId: response.questionId ?? "")
                    .go(context);
              }
            : null,
      );
    });
  }
}
