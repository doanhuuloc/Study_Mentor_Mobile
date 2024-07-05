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

class ChangePasswordState {
  const ChangePasswordState({
    this.oldPasswordField = const PasswordField.pure(),
    this.errTextOldPassField = "",
    this.newPasswordField = const PasswordField.pure(),
    this.errTextNewPassField = "",
    this.changePasswordFlowCompleted = false,
  });

  final PasswordField oldPasswordField;
  final String errTextOldPassField;
  final PasswordField newPasswordField;
  final String errTextNewPassField;
  final bool changePasswordFlowCompleted;

  bool get canSubmit {
    return oldPasswordField.isValid &&
        newPasswordField.isValid &&
        oldPasswordField.value != newPasswordField.value;
  }

  ChangePasswordState copyWith({
    PasswordField? oldPasswordField,
    String? errTextOldPassField,
    PasswordField? newPasswordField,
    String? errTextNewPassField,
    bool? changePasswordFlowCompleted,
  }) {
    return ChangePasswordState(
      oldPasswordField: oldPasswordField ?? this.oldPasswordField,
      errTextOldPassField: errTextOldPassField ?? this.errTextOldPassField,
      newPasswordField: newPasswordField ?? this.newPasswordField,
      errTextNewPassField: errTextNewPassField ?? this.errTextNewPassField,
      changePasswordFlowCompleted:
          changePasswordFlowCompleted ?? this.changePasswordFlowCompleted,
    );
  }

  // @override
  // List<Object?> get props => [
  //       newPasswordField.value,
  //       newPasswordField.error,
  //       oldPasswordField.value,
  //       oldPasswordField.error,
  //       canSubmit,
  //       changePasswordFlowCompleted,
  //       errTextOldPassField,
  //       errTextNewPassField,
  //     ];
}
