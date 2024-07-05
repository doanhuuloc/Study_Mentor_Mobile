import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../gen/locale/app_localizations.dart';
import '../../../../shared/theme/theme.dart';
import '../../../../shared/widgets/drop_down_bar/drop_down_bar.dart';
import '../../../../shared/widgets/gap_items.dart';
import '../blocs/create_question_cubit.dart';
import '../blocs/create_question_state.dart';

class SelectTimeFinding extends StatelessWidget {
  const SelectTimeFinding({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
      buildWhen: (previous, current) =>
          previous.findingTimeField != current.findingTimeField,
      builder: (context, state) {
        return GapItems(
          gap: 10,
          crossAxisAlignmentRow: CrossAxisAlignment.start,
          items: [
            Text(
              S.of(context).timeFindIntructor,
              style: Styles.s18().withWeight(FontWeight.w600),
            ),
            DropDownBar(
              data: [10, 20, 30, 45, 60, 120, 360, 720, 1440]
                  .map((e) => DropDownBarData<int>(
                      value: e, title: e < 60 ? "$e phút" : "${e ~/ 60} giờ"))
                  .toList(),
              value: state.findingTimeField,
              onChanged: (value) => context
                  .read<CreateQuestionCubit>()
                  .onChangeFindingTime(value),
            ),
          ],
        );
      },
    );
  }
}
