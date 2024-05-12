import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.content,
    required this.dateTime,
    required this.isOpposite,
  });

  final String content;
  final DateTime dateTime;
  final bool isOpposite;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isOpposite ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: <Widget>[
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
              ? const Color.fromARGB(255, 216, 239, 243)
              : Colors.blue,
          elevation: 0.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MarkdownBody(
              data: content,
            ),
          ),
        ),
        const SizedBox(height: 4.0),
      ],
    );
  }
}
