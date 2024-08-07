import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../gen/locale/app_localizations.dart';
import '../../../../shared/theme/theme.dart';
import '../../../../shared/widgets/drop_down_bar/drop_down_bar.dart';
import '../../../../shared/widgets/gap_items.dart';
import '../blocs/create_question_cubit.dart';
import '../blocs/create_question_state.dart';

class SelectTimeMetting extends StatelessWidget {
  const SelectTimeMetting({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
      buildWhen: (previous, current) =>
          previous.timeMeeting != current.timeMeeting,
      builder: (context, state) {
        return GapItems(
          gap: 10,
          crossAxisAlignmentRow: CrossAxisAlignment.start,
          items: [
            Text(
              S.of(context).timeAnswerQuestion,
              style: Styles.s16().withWeight(FontWeight.w600),
            ),
            DropDownBar(
              data: [10, 15, 20, 30, 45, 60, 120]
                  .map((e) => DropDownBarData<int>(
                      value: e,
                      title: e < 60
                          ? S.of(context).minute("$e")
                          : S.of(context).hour("${e ~/ 60}")))
                  .toList(),
              value: state.timeMeeting,
              onChanged: (value) => context
                  .read<CreateQuestionCubit>()
                  .onChangeTimeMeeting(value),
            ),
          ],
        );
      },
    );
  }
}
