import 'package:flutter/material.dart';
import '../../../../shared/theme/theme.dart';
import '../../../../shared/widgets/drop_down_bar/drop_down_bar.dart';
import '../../../../shared/widgets/gap_items.dart';

class SelectMeetingMethod extends StatefulWidget {
  const SelectMeetingMethod({super.key});

  @override
  State<SelectMeetingMethod> createState() => _SelectMeetingMethodState();
}

class _SelectMeetingMethodState extends State<SelectMeetingMethod> {
  String? meetingMethod;
  @override
  Widget build(BuildContext context) {
    return GapItems(
      gap: 10,
      crossAxisAlignmentRow: CrossAxisAlignment.start,
      items: [
        Text(
          "Chọn nền tảng bạn muốn tham gia trả lời câu hỏi",
          style: Styles.s16().withWeight(FontWeight.w600),
        ),
        DropDownBar(
          data: ["Google meet", "Zoom", "Microsoft team"]
              .map((e) => DropDownBarData<String>(value: e, title: e))
              .toList(),
          value: meetingMethod,
          onChanged: (value) => setState(() {
            meetingMethod = value;
          }),
        ),
      ],
    );
  }
}
