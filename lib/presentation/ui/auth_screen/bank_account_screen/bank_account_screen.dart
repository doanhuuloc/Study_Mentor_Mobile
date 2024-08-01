import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/application/services/vietqr/response/response.dart';
import 'package:study_mentor_mobile/presentation/gen/app_colors.dart';
import 'package:study_mentor_mobile/presentation/shared/base_infinite_loading/app_shimmer.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/app_bar/common_app_bar.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/buttons/bottom_button.dart';

import '../../../../application/services/user/user.dart';
import '../../../../application/services/vietqr/controller/controller.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../shared/handlers/loading_handler/loading_manager.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/drop_down_bar/drop_down_bar.dart';
import '../../../shared/widgets/gap_items.dart';
import '../../../shared/widgets/textfields/common_textfield.dart';
import 'bloc/bacnk_account_state.dart';
import 'bloc/bank_account_cubit.dart';

class BankAccountScreen extends StatelessWidget {
  const BankAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BankAccountCubit>(
      create: (context) => BankAccountCubit(
          failureHandlerManager: context.read<FailureHandlerManager>(),
          loadingManager: context.read<LoadingManager>(),
          userController: context.read<UserController>(),
          vietqrController: context.read<VietqrController>()),
      child: BlocBuilder<BankAccountCubit, BankAccountState>(
        buildWhen: (previous, current) => previous.loading != current.loading,
        builder: (context, state) {
          return Scaffold(
            appBar: CommonAppBar(
              title: const Text("Tài khoản ngân hàng"),
              color: AppColors.blue.shade50,
            ),
            body: Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: GapItems(
                      gap: 10,
                      items: [
                        BlocBuilder<BankAccountCubit, BankAccountState>(
                          buildWhen: (previous, current) =>
                              previous.selectedBank != current.selectedBank,
                          builder: (context, state) {
                            return GapItems(
                              gap: 10,
                              crossAxisAlignmentRow: CrossAxisAlignment.start,
                              items: [
                                Text(
                                  "Ngân hàng",
                                  style:
                                      Styles.s16().withWeight(FontWeight.w600),
                                ),
                                AppShimmer(
                                  enabled: state.loading,
                                  child: DropDownBar(
                                    data: (state.banks ?? [])
                                        .map((e) => DropDownBarData<Bank>(
                                            value: e, title: e.shortName ?? ""))
                                        .toList(),
                                    value: state.selectedBank,
                                    onChanged: (value) => context
                                        .read<BankAccountCubit>()
                                        .onChangeSelectedBank(value),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        Text(
                          "Số tài khoản",
                          style: Styles.s16().withWeight(FontWeight.w600),
                        ),
                        AppShimmer(
                          enabled: state.loading,
                          child: CommonTextField(
                            initialValue: context
                                .read<BankAccountCubit>()
                                .state
                                .accountNumberBank,
                            onChanged: (value) => context
                                .read<BankAccountCubit>()
                                .onChangeAccountNumber(value),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Text(
                          "Tên tài khoản",
                          style: Styles.s16().withWeight(FontWeight.w600),
                        ),
                        BlocBuilder<BankAccountCubit, BankAccountState>(
                          buildWhen: (previous, current) =>
                              previous.accountNameBank !=
                              current.accountNameBank,
                          builder: (context, state) {
                            return AppShimmer(
                              enabled: state.loading,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 10),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                    color: Colors.grey.shade200),
                                child: Text(
                                  state.accountNameBank ?? "",
                                  style: Styles.s15()
                                      .withLetterSpacing(-2.5 / 100),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )),
                BottomButton(
                  title: "Cập nhật ngân hàng",
                  onPress: state.canSubmit
                      ? () async => await context
                          .read<BankAccountCubit>()
                          .checkAccountBank(context)
                      : null,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
