import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../gen/locale/app_localizations.dart';
import '../../../../shared/theme/theme.dart';
import '../../../../shared/widgets/drop_down_bar/drop_down_bar.dart';
import '../../../../shared/widgets/gap_items.dart';
import '../blocs/create_question_cubit.dart';
import '../blocs/create_question_state.dart';

class SelectNumberStar extends StatelessWidget {
  const SelectNumberStar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
      buildWhen: (previous, current) =>
          previous.numberOfStar != current.numberOfStar,
      builder: (context, state) {
        return GapItems(
          gap: 10,
          crossAxisAlignmentRow: CrossAxisAlignment.start,
          items: [
            Text(
              S.of(context).askForStar,
              style: Styles.s16().withWeight(FontWeight.w600),
            ),
            DropDownBar(
              data: [1, 2, 3, 4, 5]
                  .map((e) => DropDownBarData<int>(
                      value: e, title: S.of(context).numStart("$e")))
                  .toList(),
              value: state.numberOfStar,
              onChanged: (value) => context
                  .read<CreateQuestionCubit>()
                  .onChangeNumberOfStar(value),
            ),
          ],
        );
      },
    );
  }
}
