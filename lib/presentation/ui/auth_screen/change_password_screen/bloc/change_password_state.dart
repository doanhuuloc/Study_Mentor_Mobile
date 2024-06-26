import 'package:equatable/equatable.dart';

import '../../../../bases/base_form_input/base_form_input.dart';

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

class ChangePasswordState extends Equatable {
  const ChangePasswordState({
    this.oldPasswordField = const PasswordField.pure(),
    this.newPasswordField = const PasswordField.pure(),
    this.changePasswordFlowCompleted = false,
  });

  final PasswordField oldPasswordField;
  final PasswordField newPasswordField;
  final bool changePasswordFlowCompleted;

  bool get canSubmit {
    return oldPasswordField.isValid &&
        newPasswordField.isValid &&
        oldPasswordField.value != newPasswordField.value;
  }

  ChangePasswordState copyWith({
    PasswordField? oldPasswordField,
    PasswordField? newPasswordField,
    bool? changePasswordFlowCompleted,
  }) {
    return ChangePasswordState(
      oldPasswordField: oldPasswordField ?? this.oldPasswordField,
      newPasswordField: newPasswordField ?? this.newPasswordField,
      changePasswordFlowCompleted:
          changePasswordFlowCompleted ?? this.changePasswordFlowCompleted,
    );
  }

  @override
  List<Object?> get props => [
        newPasswordField.value,
        newPasswordField.error,
        oldPasswordField.value,
        oldPasswordField.error,
        canSubmit,
        changePasswordFlowCompleted,
      ];
}
