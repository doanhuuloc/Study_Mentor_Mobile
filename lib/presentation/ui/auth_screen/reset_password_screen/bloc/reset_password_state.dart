import 'package:equatable/equatable.dart';

import '../../../../shared/widgets/form_fields/form_email_field.dart';

class ResetPasswordState extends Equatable {
  const ResetPasswordState({
    this.emailField = const EmailField.pure(),
    this.resetPasswordFlowCompleted = false,
  });

  final EmailField emailField;
  final bool resetPasswordFlowCompleted;

  bool get canSubmit {
    return emailField.isValid && emailField.value != "";
  }

  ResetPasswordState copyWith({
    EmailField? emailField,
    String? fullNameField,
    int? genderField,
    bool? resetPasswordFlowCompleted,
  }) {
    return ResetPasswordState(
      emailField: emailField ?? this.emailField,
      resetPasswordFlowCompleted:
          resetPasswordFlowCompleted ?? this.resetPasswordFlowCompleted,
    );
  }

  @override
  List<Object?> get props => [
        emailField.value,
        emailField.error,
        canSubmit,
        resetPasswordFlowCompleted,
      ];
}
