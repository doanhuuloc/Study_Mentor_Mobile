import 'package:study_mentor_mobile/application/services/auth/auth.dart';
import 'package:study_mentor_mobile/presentation/bases/user_cubit/user_cubit.dart';

import '../../../../bases/auth_cubit/auth_cubit.dart';
import '../../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../../shared/handlers/loading_handler/loading_manager.dart';
import '../../../../shared/widgets/form_fields/form_email_field.dart';
import 'login_state.dart';

class LoginCubit extends SafeCubit<LoginState> {
  LoginCubit({
    required this.loadingManager,
    required this.failureHandlerManager,
    required this.authCubit,
    this.redirectUrl,
    required this.userCubit,
  }) : super(const LoginState());
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

  void onLoginWithUserInfo() async {
    final loginFuture = authCubit.loginWithUserInfo(
      email: state.emailField.value,
      password: state.passwordField.value,
      redirectUrl: redirectUrl,
      fcmToken: userCubit.state.fcmToken,
    );

    final loadingLoginFailure =
        await loadingManager.startLoading(future: loginFuture);
    if (loadingLoginFailure != null) {
      failureHandlerManager.handle(loadingLoginFailure);
      return;
    }
    emit(state.copyWith(loginFlowCompleted: true));
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
    emit(state.copyWith(loginFlowCompleted: true));
  }
}
