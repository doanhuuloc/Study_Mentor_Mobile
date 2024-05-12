import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../shared/theme/theme.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    super.key,
    required this.avatar,
    required this.title,
    required this.content,
    required this.time,
    required this.voidCallback,
  });
  final ImageProvider avatar;
  final String title;
  final String content;
  final DateTime time;
  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat("hh:mm");
    return InkWell(
      onTap: voidCallback,
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: avatar,
                    fit: BoxFit.cover,
                  )),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.s14().withWeight(FontWeight.w300),
                    ),
                    Text(
                      content,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.s16(),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  dateFormat.format(time),
                  style: Styles.s13(),
                ),
                const SizedBox(width: 2),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
