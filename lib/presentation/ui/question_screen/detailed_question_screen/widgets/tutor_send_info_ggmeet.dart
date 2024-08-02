import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:study_mentor_mobile/presentation/gen/app_colors.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/theme.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';

class TutorSendInfoGGMeet extends StatelessWidget {
  const TutorSendInfoGGMeet({
    super.key,
    required this.reject,
    required this.accept,
    required this.timeMeetingStart,
  });
  final VoidCallback reject;
  final VoidCallback accept;
  final DateTime timeMeetingStart;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      child: Wrap(
        children: [
          Container(
            // decoration: BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.all(20),
            child: GapItems(
              items: [
                Text(
                  "Người hướng dẫn đề xuất bạn tham gia vào thời gian khác",
                  style: Styles.s16().withWeight(FontWeight.w500),
                ),
                Text(
                  "Thời gian tham gia google meet",
                  style: Styles.s15(),
                ),
                Text(
                  DateFormat("dd-MM-yyyy hh-mm").format(timeMeetingStart),
                  style: Styles.s16()
                      .withColor(Colors.red)
                      .withWeight(FontWeight.w600),
                ),
                Text(
                  "Bạn có thể đề xuất thời gian tham gia google khác tắt thông báo và Gửi 1 lời mời tham gia google meet khác",
                  style: Styles.s14().withColor(AppColors.text.bodyText),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Đóng",
                          style: Styles.s16(),
                        )),
                    TextButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    side:
                                        BorderSide(color: Colors.blue.shade800),
                                    borderRadius:
                                        BorderRadius.circular(1000)))),
                        onPressed: reject,
                        child: Text(
                          "Từ chối",
                          style: Styles.s16(),
                        )),
                    TextButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: accept,
                        child: Text(
                          "Chấp nhận",
                          style: Styles.s16().withColor(Colors.white),
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
