import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/application/services/education/education.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/shared/base_infinite_loading/app_shimmer.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:study_mentor_mobile/utilities/launch_url.dart';

import '../../../../../application/services/app/app_config/app_config.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../shared/theme/theme.dart';
import '../../../../shared/widgets/app_icon_button.dart';
import '../../../../shared/widgets/fileBox.dart';
import '../../../../utilities/download_file.dart';
import '../blocs/detailed_question_cubit.dart';
import '../blocs/detailed_question_state.dart';

class AnswerInfoBox extends StatelessWidget {
  const AnswerInfoBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailedQuestionCubit, DetailedQuestionState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GapItems(
            gap: 15,
            items: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Text(
                        state.questionInfo?.questionType == QuestionType.GGMEET
                            ? S.of(context).ggmeetLink
                            : S.of(context).answeredInfomation,
                        style: Styles.s16().withWeight(FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
              if (state.questionInfo?.questionType == QuestionType.FILE &&
                  state.answer == null)
                Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppShimmer(
                            child: Container(
                          height: 100,
                          decoration: const BoxDecoration(color: Colors.black),
                        )),
                        const SizedBox(height: 20),
                        Text(
                          S.of(context).intructorAnsweringQuestion,
                          style: Styles.s16(),
                        )
                      ],
                    )),
              if (state.questionInfo?.questionType == QuestionType.FILE &&
                  state.answer != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: QuillEditor.basic(
                        configurations: QuillEditorConfigurations(
                          readOnly: true,
                          showCursor: false,
                          enableInteractiveSelection: false,
                          controller: QuillController(
                            document: Document.fromHtml(
                                state.answer?.content ?? "<p></p>"),
                            selection: const TextSelection.collapsed(offset: 0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    if ((state.answer?.fileAttachmentAnswers ?? []).isNotEmpty)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).attachments,
                            style: Styles.s15().withWeight(FontWeight.w600),
                          ),
                          ...?state.answer?.fileAttachmentAnswers
                              ?.map(
                                (e) => FileBox(
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
                                        openFile(
                                            url:
                                                "${context.read<AppConfig>().imagePath}/${e.fileKey}",
                                            fileName: "${e.fileName}");
                                      }
                                    },
                                  ),
                                ),
                              )
                              .toList()
                        ],
                      )
                  ],
                ),
              if (state.questionInfo?.questionType == QuestionType.GGMEET &&
                  state.meetingUrl != "")
                Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      S.of(context).joinGGMeet,
                      style: Styles.s16(),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            child: Text(state.meetingUrl ?? ""),
                            onPressed: () {
                              if (state.meetingUrl != "") {
                                appLaunchUrl(state.meetingUrl ?? "", context);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ],
          ),
        );
      },
    );
  }
}
