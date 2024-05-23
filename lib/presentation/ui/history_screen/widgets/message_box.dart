import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:study_mentor_mobile/presentation/gen/app_colors.dart';

import '../../../shared/theme/theme.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    super.key,
    this.avatar,
    this.title,
    this.content,
    this.time,
    this.voidCallback,
    this.loading = false,
  });
  final ImageProvider? avatar;
  final String? title;
  final String? content;
  final DateTime? time;
  final VoidCallback? voidCallback;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat("hh:mm");
    return InkWell(
      onTap: voidCallback,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (loading)
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.black,
                ),
              )
            else
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: avatar != null
                        ? DecorationImage(
                            image: avatar!,
                            fit: BoxFit.cover,
                          )
                        : null),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (loading)
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.black,
                        ),
                      )
                    else
                      Text(
                        title ?? "",
                        overflow: TextOverflow.ellipsis,
                        style: Styles.s14().withWeight(FontWeight.w300),
                      ),
                    const SizedBox(height: 2),
                    if (loading)
                      Container(
                        height: 16,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.black,
                        ),
                      )
                    else
                      Text(
                        content ?? "",
                        overflow: TextOverflow.ellipsis,
                        style: Styles.s16(),
                      ),
                  ],
                ),
              ),
            ),
            if (loading)
              Container(
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.black,
                ),
              )
            else
              Row(
                children: [
                  Text(
                    time != null ? dateFormat.format(time!) : '',
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
