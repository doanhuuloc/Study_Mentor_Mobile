import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';
import 'package:study_mentor_mobile/presentation/utilities/formatCurency.dart';

import '../../../../shared/theme/theme.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({
    super.key,
    this.loading = false,
    required this.subjectName,
    required this.price,
  });

  final bool loading;
  final String subjectName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 100,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(8)),
          )
        : Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            child: GapItems(
              gap: 10,
              items: [
                Row(
                  children: [
                    Text(
                      S.of(context).subjectQuestion,
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
                      S.of(context).price,
                      style: Styles.s15().withWeight(FontWeight.w500),
                    ),
                    Expanded(
                        child: Text(
                      formatCurrency(double.parse(price), context),
                      style: Styles.s15().withColor(Colors.redAccent),
                    )),
                  ],
                ),
              ],
            ),
          );
  }
}
