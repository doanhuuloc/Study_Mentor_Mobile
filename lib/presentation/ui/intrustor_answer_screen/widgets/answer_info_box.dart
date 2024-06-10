import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';
import 'package:study_mentor_mobile/presentation/ui/intrustor_answer_screen/blocs/intrustor_answer_cubit.dart';
import 'package:study_mentor_mobile/presentation/ui/intrustor_answer_screen/blocs/intrustor_answer_state.dart';
import 'package:study_mentor_mobile/utilities/logging/logging.dart';

import '../../../shared/theme/theme.dart';
import 'fileBox.dart';

class AnswerInfoBox extends StatelessWidget {
  const AnswerInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntrustorAnswerCubit, IntrustorAnswerState>(
      builder: (context, state) {
        logging.i(state.answer?.fileAttachmentAnswers);
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
                        "Thông tin câu trả lời",
                        style: Styles.s16().withWeight(FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
              if (state.answer == null)
                Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircularProgressIndicator(),
                        const SizedBox(height: 20),
                        Text(
                          "Người hướng dẫn đang trả lời câu hỏi",
                          style: Styles.s16(),
                        )
                      ],
                    )),
              if (state.answer != null)
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
            ],
          ),
        );
      },
    );
  }
}
