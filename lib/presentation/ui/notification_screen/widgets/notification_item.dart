import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/presentation/gen/app_colors.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';
import 'package:study_mentor_mobile/presentation/utilities/date_format.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.title,
    required this.content,
    required this.dateTime,
    required this.onTap,
  });

  final String title;
  final String content;
  final DateTime dateTime;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.only(left: 5),
        decoration: const BoxDecoration(color: Colors.blue),
        child: Ink(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: AppColors.blue.shade50),
          child: GapItems(
            gap: 3,
            crossAxisAlignmentRow: CrossAxisAlignment.start,
            items: [
              Text(
                title,
                style: Styles.s16().withWeight(FontWeight.w500),
              ),
              Text(
                content,
                style: Styles.s15(),
              ),
              Text(
                diffDate(dateTime, context),
                style: Styles.s14().withColor(AppColors.text.bodyText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
