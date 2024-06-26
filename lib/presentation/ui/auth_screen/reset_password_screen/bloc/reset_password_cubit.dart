import 'package:study_mentor_mobile/application/services/user/user.dart';

import '../../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../../shared/handlers/loading_handler/loading_manager.dart';
import '../../../../shared/widgets/form_fields/form_email_field.dart';
import 'reset_password_state.dart';

class ResetPasswordCubit extends SafeCubit<ResetPasswordState> {
  ResetPasswordCubit({
    required this.loadingManager,
    required this.failureHandlerManager,
    required this.userController,
  }) : super(const ResetPasswordState());
  final FailureHandlerManager failureHandlerManager;
  final LoadingManager loadingManager;
  final UserController userController;

  void onEmailChanged(String value) {
    emit(state.copyWith(emailField: EmailField.dirty(value: value.trim())));
  }

  Future<void> resetPassword() async {
    final resetPasswordFuture = userController
        .resetPassword(ResetPasswordRequest(email: state.emailField.value));

    final response =
        await loadingManager.startLoading(future: resetPasswordFuture);

    if (response.isLeft) {
      failureHandlerManager.handle(response.left);
    }

    if (response.isRight) {
      emit(state.copyWith(resetPasswordFlowCompleted: true));
    }
  }
}
