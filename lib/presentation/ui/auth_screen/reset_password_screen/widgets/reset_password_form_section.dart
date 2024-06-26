import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../gen/locale/app_localizations.dart';
import '../../../../shared/widgets/buttons/primary_button.dart';
import '../../../../shared/widgets/textfields/common_textfield.dart';

import '../bloc/reset_password_cubit.dart';
import '../bloc/reset_password_state.dart';

class ResetPasswordFormSection extends StatelessWidget {
  const ResetPasswordFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonTextField(
          hintText: S.of(context).email,
          onChanged: (value) {
            context.read<ResetPasswordCubit>().onEmailChanged(value);
          },
        ),
        const SizedBox(height: 32),
        BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
            buildWhen: (prev, curr) {
          return prev.canSubmit != curr.canSubmit;
        }, builder: (context, state) {
          return PrimaryButton.round(
            onPressed: state.canSubmit
                ? () async {
                    await context.read<ResetPasswordCubit>().resetPassword();
                  }
                : null,
            title: "Reset",
          );
        }),
        const SizedBox(height: 8),
      ],
    );
  }
}
