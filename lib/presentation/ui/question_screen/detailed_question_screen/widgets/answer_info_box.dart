import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:study_mentor_mobile/application/services/education/education.dart';
import 'package:study_mentor_mobile/presentation/shared/base_infinite_loading/app_shimmer.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';

import 'package:study_mentor_mobile/utilities/launch_url.dart';

import '../../../../shared/theme/theme.dart';
import '../blocs/detailed_question_cubit.dart';
import '../blocs/detailed_question_state.dart';
import 'fileBox.dart';

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
                            ? "Link Google Meet"
                            : "Thông tin câu trả lời",
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
                          "Người hướng dẫn đang trả lời câu hỏi",
                          style: Styles.s16(),
                        )
                      ],
                    )),
              if (state.questionInfo?.questionType == QuestionType.FILE &&
                  state.answer != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MarkdownBody(
                      styleSheet: MarkdownStyleSheet.fromTheme(ThemeData(
                          textTheme: TextTheme(bodyMedium: Styles.s15()))),
                      data: state.answer?.content ?? "",
                    ),
                    const SizedBox(height: 20),
                    if (state.answer?.fileAttachmentAnswers != [] &&
                        state.answer?.fileAttachmentAnswers != null)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tệp đính kèm",
                            style: Styles.s15().withWeight(FontWeight.w600),
                          ),
                          ...?state.answer?.fileAttachmentAnswers
                              ?.map(
                                (e) => FileBox(
                                    name: e.fileName ?? "", download: () {}),
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
                      "Vui lòng tham gia link google meet bên dưới để cùng với người hướng dẫn trả lời câu hỏi của bạn",
                      style: Styles.s16(),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            child: Text("${state.meetingUrl}"),
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
