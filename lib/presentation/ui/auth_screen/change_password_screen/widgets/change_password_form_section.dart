import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/widgets/buttons/primary_button.dart';
import '../../../../shared/widgets/textfields/common_textfield.dart';

import '../bloc/change_password_cubit.dart';
import '../bloc/change_password_state.dart';

class ChangePasswordFormSection extends StatelessWidget {
  const ChangePasswordFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonTextField(
          hintText: "Old password",
          obscure: true,
          onChanged: (value) {
            context.read<ChangePasswordCubit>().onOldPasswordChanged(value);
          },
        ),
        const SizedBox(height: 12),
        CommonTextField(
          hintText: "New password",
          obscure: true,
          onChanged: (value) {
            context.read<ChangePasswordCubit>().onNewPasswordChanged(value);
          },
        ),
        const SizedBox(height: 32),
        BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
            buildWhen: (prev, curr) {
          return prev.canSubmit != curr.canSubmit;
        }, builder: (context, state) {
          return PrimaryButton.round(
            onPressed: state.canSubmit
                ? () {
                    context.read<ChangePasswordCubit>().changePassword();
                  }
                : null,
            title: "Change",
          );
        }),
        const SizedBox(height: 8),
      ],
    );
  }
}
