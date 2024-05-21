import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:study_mentor_mobile/presentation/gen/app_colors.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    this.files,
    required this.content,
    required this.dateTime,
    required this.isOpposite,
  });
  final String? files;
  final String content;
  final DateTime dateTime;
  final bool isOpposite;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isOpposite ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        if (files != null)
          Image.network(
            "https://storage.googleapis.com/study-mentor/${files ?? ""}",
            height: 200,
            // width: 200,
          ),
        Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          color: isOpposite
              ? const Color.fromARGB(255, 224, 240, 243)
              : Colors.blue,
          elevation: 0.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MarkdownBody(
                data: content,
                styleSheet: MarkdownStyleSheet.fromTheme(ThemeData(
                    textTheme: TextTheme(
                        bodyMedium: Styles.s15().withColor(
                            isOpposite ? AppColors.black : AppColors.white))))),
          ),
        ),
        const SizedBox(height: 4.0),
      ],
    );
  }
}
