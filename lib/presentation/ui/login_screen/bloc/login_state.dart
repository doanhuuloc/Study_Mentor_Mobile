import 'package:equatable/equatable.dart';

import '../../../bases/base_form_input/base_form_input.dart';
import '../../../shared/widgets/form_fields/form_email_field.dart';

enum LoginFieldError {
  empty,
}

class PasswordField extends BaseFormInput<String, LoginFieldError> {
  const PasswordField.pure({super.value = ''}) : super.pure();

  const PasswordField.dirty({required super.value}) : super.dirty();

  @override
  LoginFieldError? selfValidate() {
    if (value.trim().isEmpty) {
      return LoginFieldError.empty;
    }
    return null;
  }
}

class LoginState extends Equatable {
  const LoginState({
    this.emailField = const EmailField.pure(),
    this.passwordField = const PasswordField.pure(),
    this.loginFlowCompleted = false,
  });

  final EmailField emailField;
  final PasswordField passwordField;
  final bool loginFlowCompleted;

  bool get canSubmit {
    return emailField.isValid && passwordField.isValid;
  }

  LoginState copyWith({
    EmailField? emailField,
    PasswordField? passwordField,
    bool? loginFlowCompleted,
  }) {
    return LoginState(
      emailField: emailField ?? this.emailField,
      passwordField: passwordField ?? this.passwordField,
      loginFlowCompleted: loginFlowCompleted ?? this.loginFlowCompleted,
    );
  }

  @override
  List<Object?> get props => [
        emailField.value,
        emailField.error,
        passwordField.value,
        passwordField.error,
        canSubmit,
        loginFlowCompleted,
      ];
}
