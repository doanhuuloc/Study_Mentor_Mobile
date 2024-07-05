import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:study_mentor_mobile/application/services/file/file.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';

import '../../../../shared/theme/theme.dart';
import 'fileBox.dart';

class QuestionInfoBox extends StatelessWidget {
  const QuestionInfoBox({
    super.key,
    this.loading = false,
    required this.question,
    this.fileResponse,
  });
  final String question;
  final List<FileResponse>? fileResponse;
  final bool loading;

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
                    S.of(context).questionInfomation,
                    style: Styles.s16().withWeight(FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
          if (loading)
            Container(
              height: 150,
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(color: Colors.black),
            )
          else
            MarkdownBody(
                styleSheet: MarkdownStyleSheet.fromTheme(
                    ThemeData(textTheme: TextTheme(bodyMedium: Styles.s15()))),
                data: question),
          if ((fileResponse ?? []).isNotEmpty)
            Text(
              S.of(context).attachments,
              style: Styles.s15().withWeight(FontWeight.w600),
            ),
          if (loading)
            Container(
              height: 60,
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(color: Colors.black),
            )
          else
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
