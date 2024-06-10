import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:study_mentor_mobile/application/services/file/file.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';

import '../../../shared/theme/theme.dart';
import 'fileBox.dart';

class QuestionInfoBox extends StatelessWidget {
  const QuestionInfoBox({super.key, required this.question, this.fileResponse});
  final String question;
  final List<FileResponse>? fileResponse;

  @override
  Widget build(BuildContext context) {
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
                    "Thông tin câu hỏi",
                    style: Styles.s16().withWeight(FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
          MarkdownBody(
              styleSheet: MarkdownStyleSheet.fromTheme(
                  ThemeData(textTheme: TextTheme(bodyMedium: Styles.s15()))),
              data: question),
          Text(
            "Tệp đính kèm",
            style: Styles.s15().withWeight(FontWeight.w600),
          ),
          Column(
            children: (fileResponse ?? []).map((file) {
              return FileBox(
                name: file.fileName ?? "",
                download: () {},
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
