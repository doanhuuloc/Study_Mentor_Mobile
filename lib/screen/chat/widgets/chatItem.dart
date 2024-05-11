import 'package:flutter/material.dart';

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
          isOpposite ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
          color: isOpposite ? Colors.blue : const Color(0xffF3F9FA),
          elevation: 0.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              content,
              style: TextStyle(
                color: isOpposite ? Colors.white : Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4.0),
      ],
    );
  }
}
