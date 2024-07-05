import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../gen/locale/app_localizations.dart';
import '../../../../shared/theme/theme.dart';
import '../../../../shared/widgets/gap_items.dart';
import '../../../../utilities/formatCurency.dart';
import '../blocs/create_question_cubit.dart';
import '../blocs/create_question_state.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateQuestionCubit, CreateQuestionState>(
      listenWhen: (prev, curr) {
        if (prev.canSubmit != curr.canSubmit) {
          return true;
        }
        return prev.subject != curr.subject ||
            prev.findingTimeField != curr.findingTimeField ||
            prev.numberOfStar != curr.numberOfStar ||
            prev.selectedVoucher != curr.selectedVoucher;
      },
      listener: (context, state) {
        if (state.canSubmit) {
          context.read<CreateQuestionCubit>().calculatePrice();
        }
      },
      child: BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
        buildWhen: (previous, current) =>
            previous.calculatePriceReponse != current.calculatePriceReponse ||
            previous.canSubmit != current.canSubmit,
        builder: (context, state) {
          if (state.calculatePriceReponse == null || !state.canSubmit) {
            return const SizedBox();
          } else {
            double priceVoucher = (state.calculatePriceReponse?.price ?? 0) -
                (state.calculatePriceReponse?.promoPrice ?? 0);
            return GapItems(
              crossAxisAlignmentRow: CrossAxisAlignment.start,
              items: [
                Text(
                  S.of(context).paymentInfomation,
                  style: Styles.s18().withWeight(FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).totalPayment,
                      style: Styles.s16().withWeight(FontWeight.w300),
                    ),
                    Text(
                      formatCurrency(
                          state.calculatePriceReponse?.price ?? 0, context),
                      style: Styles.s16().withWeight(FontWeight.w300),
                    ),
                  ],
                ),
                if (priceVoucher > 0)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        S.of(context).voucherDiscount,
                        style: Styles.s16().withWeight(FontWeight.w300),
                      ),
                      Text(
                        "- ${formatCurrency(priceVoucher, context)}",
                        style: Styles.s16().withWeight(FontWeight.w300),
                      ),
                    ],
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).total,
                      style: Styles.s16().withWeight(FontWeight.w500),
                    ),
                    Text(
                      formatCurrency(
                          state.calculatePriceReponse?.promoPrice ?? 0,
                          context),
                      style: Styles.s16()
                          .withWeight(FontWeight.w500)
                          .withColor(Colors.red),
                    ),
                  ],
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
