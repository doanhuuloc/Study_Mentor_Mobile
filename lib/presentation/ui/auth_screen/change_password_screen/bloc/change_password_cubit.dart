import 'package:study_mentor_mobile/application/services/user/user.dart';

import '../../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../../shared/handlers/loading_handler/loading_manager.dart';
import 'change_password_state.dart';

class ChangePasswordCubit extends SafeCubit<ChangePasswordState> {
  ChangePasswordCubit({
    required this.loadingManager,
    required this.failureHandlerManager,
    required this.userController,
  }) : super(const ChangePasswordState());
  final FailureHandlerManager failureHandlerManager;
  final LoadingManager loadingManager;
  final UserController userController;

  void onOldPasswordChanged(String value) {
    emit(state.copyWith(
        oldPasswordField: PasswordField.dirty(value: value.trim())));
  }

  void onNewPasswordChanged(String value) {
    emit(state.copyWith(
        newPasswordField: PasswordField.dirty(value: value.trim())));
  }

  void changePassword() async {
    final changePasswordFuture =
        userController.changePassword(ChangePasswordRequest(
      passwordOld: state.oldPasswordField.value,
      passwordNew: state.newPasswordField.value,
    ));

    final response =
        await loadingManager.startLoading(future: changePasswordFuture);

    if (response.isLeft) {
      failureHandlerManager.handle(response.left);
    }

    if (response.isRight) {
      emit(state.copyWith(changePasswordFlowCompleted: true));
    }
  }
}
