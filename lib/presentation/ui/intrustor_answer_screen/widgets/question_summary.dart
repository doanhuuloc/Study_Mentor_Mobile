import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';

import '../../../shared/theme/theme.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(
      {super.key, required this.subjectName, required this.price});

  final String subjectName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: GapItems(
        gap: 10,
        items: [
          Text(
            "Thông tin buổi trao đổi",
            style: Styles.s16().withWeight(FontWeight.w600),
          ),
          Row(
            children: [
              Text(
                "Môn học: ",
                style: Styles.s15().withWeight(FontWeight.w500),
              ),
              Expanded(
                  child: Text(
                subjectName,
                style: Styles.s15(),
              )),
            ],
          ),
          Row(
            children: [
              Text(
                "Giá: ",
                style: Styles.s15().withWeight(FontWeight.w500),
              ),
              Expanded(
                  child: Text(
                price,
                style: Styles.s15(),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
