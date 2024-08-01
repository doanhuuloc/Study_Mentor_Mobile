import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/application/services/user/user.dart';
import 'package:study_mentor_mobile/application/services/vietqr/request/request.dart';
import 'package:study_mentor_mobile/application/services/vietqr/response/response.dart';

import '../../../../../application/services/vietqr/controller/controller.dart';
import '../../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../../router/router_config/routes_gen/routes_gen.dart';
import '../../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../../shared/handlers/loading_handler/loading_manager.dart';
import 'bacnk_account_state.dart';

class BankAccountCubit extends SafeCubit<BankAccountState> {
  BankAccountCubit({
    required this.loadingManager,
    required this.failureHandlerManager,
    required this.userController,
    required this.vietqrController,
  }) : super(const BankAccountState()) {
    fetchData();
  }

  final FailureHandlerManager failureHandlerManager;
  final LoadingManager loadingManager;
  final UserController userController;
  final VietqrController vietqrController;

  void onChangeSelectedBank(Bank value) {
    emit(state.copyWith(selectedBank: value));
  }

  void onChangeAccountNumber(String value) {
    emit(state.copyWith(accountNumberBank: value));
  }

  Future<void> getListBank() async {
    emit(state.copyWith(loading: true));
    final response = await vietqrController.getListBank();
    if (response.isLeft) {}

    if (response.isRight) {
      emit(state.copyWith(banks: response.right.data, loading: false));
    }
  }

  Future<void> getMyBankInfo() async {
    emit(state.copyWith(loading: true));

    final response = await userController.getBankInfo();
    if (response.isLeft) {}

    if (response.isRight) {
      final Bank? myBankInfo = state.banks?.firstWhere(
        (bank) => bank.bin == response.right.data.idOfBanking,
        orElse: () => const Bank(),
      );

      emit(state.copyWith(
        selectedBank: myBankInfo,
        loading: false,
        accountNumberBank: response.right.data.numberOfBanking,
        accountNameBank: response.right.data.nameUserOfBanking,
      ));
    }
  }

  Future<void> checkAccountBank(BuildContext context) async {
    final futureResponse = vietqrController.checkAccountBank(
        checkAccountBankRequest: CheckAccountBankRequest(
      bin: state.selectedBank?.bin ?? "",
      accountNumber: state.accountNumberBank ?? "",
    ));
    final response = await loadingManager.startLoading(future: futureResponse);

    if (response.isRight) {
      if (!context.mounted) {
        return;
      }
      if (response.right.code == "00") {
        emit(state.copyWith(accountNameBank: response.right.data?.accountName));
        await updateBankInfo(context);
      } else {
        const AlertRouteData(content: "Tài khoản không hợp lệ").push(context);
      }
    }
  }

  Future<void> updateBankInfo(BuildContext context) async {
    final futureResponse = userController.updateBankInfo(UpdateBankInfoRequest(
      idOfBanking: state.selectedBank?.bin,
      nameOfBanking: state.selectedBank?.name,
      numberOfBanking: state.accountNumberBank,
      nameUserOfBanking: state.accountNameBank,
    ));
    final response = await loadingManager.startLoading(future: futureResponse);

    if (response.isLeft) {
      failureHandlerManager.handle(response.left);
    }

    if (response.isRight) {
      if (!context.mounted) {
        return;
      }
      const AlertRouteData(
              content: "Cập nhật thông tin tài khoản ngân hàng thành công")
          .push(context);
    }
  }

  Future<void> fetchData() async {
    await getListBank();
    await getMyBankInfo();
  }
}
