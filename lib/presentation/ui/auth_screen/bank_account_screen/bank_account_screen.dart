import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/gen/app_colors.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/app_bar/common_app_bar.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/buttons/bottom_button.dart';

import '../../../../application/services/user/user.dart';
import '../../../../application/services/vietqr/controller/controller.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../shared/handlers/loading_handler/loading_manager.dart';
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
        builder: (context, state) {
          return Scaffold(
            appBar: CommonAppBar(
              title: const Text("Tài khoản ngân hàng"),
              color: AppColors.blue.shade50,
            ),
            body: const Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [],
                  ),
                )),
                BottomButton(title: "ýe"),
              ],
            ),
          );
        },
      ),
    );
  }
}
