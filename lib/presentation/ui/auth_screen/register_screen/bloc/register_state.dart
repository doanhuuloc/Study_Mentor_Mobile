import '../../../../bases/base_form_input/base_form_input.dart';
import '../../../../shared/widgets/form_fields/form_email_field.dart';

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

class RegisterState {
  const RegisterState({
    this.emailField = const EmailField.pure(),
    this.passwordField = const PasswordField.pure(),
    this.fullNameField = "",
    this.genderField,
    this.registerFlowCompleted = false,
    this.dateOfBirth,
  });

  final EmailField emailField;
  final PasswordField passwordField;
  final String fullNameField;
  final int? genderField;
  final bool registerFlowCompleted;
  final DateTime? dateOfBirth;

  bool get canSubmit {
    return emailField.isValid &&
        passwordField.isValid &&
        genderField != null &&
        fullNameField != "" &&
        dateOfBirth != null;
  }

  RegisterState copyWith({
    EmailField? emailField,
    PasswordField? passwordField,
    String? fullNameField,
    int? genderField,
    bool? registerFlowCompleted,
    DateTime? dateOfBirth,
  }) {
    return RegisterState(
      emailField: emailField ?? this.emailField,
      passwordField: passwordField ?? this.passwordField,
      fullNameField: fullNameField ?? this.fullNameField,
      genderField: genderField ?? this.genderField,
      registerFlowCompleted:
          registerFlowCompleted ?? this.registerFlowCompleted,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
    );
  }
}
