import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/services/education/education.dart';
import '../../../../gen/locale/app_localizations.dart';
import '../../../../shared/theme/theme.dart';
import '../../../../shared/widgets/drop_down_bar/drop_down_bar.dart';
import '../../../../shared/widgets/gap_items.dart';
import '../blocs/create_question_cubit.dart';
import '../blocs/create_question_state.dart';

class SelectVoucher extends StatelessWidget {
  const SelectVoucher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
      buildWhen: (previous, current) =>
          previous.selectedVoucher != current.selectedVoucher ||
          previous.vouchers != current.vouchers,
      builder: (context, state) {
        return GapItems(
          gap: 10,
          crossAxisAlignmentRow: CrossAxisAlignment.start,
          items: [
            Text(
              S.of(context).voucher,
              style: Styles.s16().withWeight(FontWeight.w600),
            ),
            DropDownBar(
              hintText: (state.vouchers?.length ?? 0) <= 0
                  ? S.of(context).emptyVoucher
                  : null,
              data: state.vouchers
                      ?.map((e) => DropDownBarData<VoucherReponse>(
                          value: e, title: e.code ?? ""))
                      .toList() ??
                  [],
              value: state.selectedVoucher,
              enabled: (state.vouchers?.length ?? 0) > 0,
              onChanged: (value) => context
                  .read<CreateQuestionCubit>()
                  .onChangeVoucher(value as VoucherReponse),
            ),
          ],
        );
      },
    );
  }
}
