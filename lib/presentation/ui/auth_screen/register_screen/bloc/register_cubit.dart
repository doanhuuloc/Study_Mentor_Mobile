import 'package:study_mentor_mobile/presentation/bases/user_cubit/user_cubit.dart';

import '../../../../../application/services/auth/auth.dart';
import '../../../../bases/auth_cubit/auth_cubit.dart';
import '../../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../../shared/handlers/loading_handler/loading_manager.dart';
import '../../../../shared/widgets/form_fields/form_email_field.dart';
import 'register_state.dart';

class RegisterCubit extends SafeCubit<RegisterState> {
  RegisterCubit({
    required this.loadingManager,
    required this.failureHandlerManager,
    required this.authCubit,
    this.redirectUrl,
    required this.userCubit,
  }) : super(const RegisterState());
  final AuthCubit authCubit;
  final FailureHandlerManager failureHandlerManager;
  final LoadingManager loadingManager;
  final String? redirectUrl;
  final UserCubit userCubit;

  void onEmailChanged(String value) {
    emit(state.copyWith(emailField: EmailField.dirty(value: value.trim())));
  }

  void onPasswordChanged(String value) {
    emit(state.copyWith(
        passwordField: PasswordField.dirty(value: value.trim())));
  }

  void onFullNameChanged(String value) {
    emit(state.copyWith(fullNameField: value));
  }

  void onGenderChanged(int value) {
    emit(state.copyWith(genderField: value));
  }

  void onChangeDateOfBirth(DateTime value) {
    emit(state.copyWith(dateOfBirth: value));
  }

  void onRegisterWithUserInfo() async {
    final registerFuture = authCubit.registerWithUserInfo(
      request: RegisterRequest(
        email: state.emailField.value,
        password: state.passwordField.value,
        fullName: state.fullNameField,
        gender: state.genderField ?? 0,
        type: 0,
        dateOfBirth: state.dateOfBirth ?? DateTime.now(),
      ),
      redirectUrl: redirectUrl,
      fcmToken: userCubit.state.fcmToken,
    );

    final loadingRegisterFailure =
        await loadingManager.startLoading(future: registerFuture);
    if (loadingRegisterFailure != null) {
      failureHandlerManager.handle(loadingRegisterFailure);
      return;
    }
    emit(state.copyWith(registerFlowCompleted: true));
  }

  void onLoginWithGoogle(LoginWithGoogleRequest loginWithGoogleRequest) async {
    final loginWithGoogleFuture = authCubit.loginWithGoogle(
      loginWithGoogleRequest: loginWithGoogleRequest,
      redirectUrl: redirectUrl,
    );

    final loadingLoginWithGoogleFailure =
        await loadingManager.startLoading(future: loginWithGoogleFuture);
    if (loadingLoginWithGoogleFailure != null) {
      failureHandlerManager.handle(loadingLoginWithGoogleFailure);
      return;
    }
    emit(state.copyWith(registerFlowCompleted: true));
  }
}
