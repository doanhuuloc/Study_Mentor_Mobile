import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
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
          hintText: S.of(context).oldPassword,
          obscure: true,
          onChanged: (value) {
            context.read<ChangePasswordCubit>().onOldPasswordChanged(value);
          },
          errorText:
              context.read<ChangePasswordCubit>().state.errTextOldPassField,
        ),
        const SizedBox(height: 12),
        BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
          buildWhen: (previous, current) =>
              previous.errTextNewPassField != current.errTextNewPassField,
          builder: (context, state) {
            return CommonTextField(
              hintText: S.of(context).newPasssword,
              obscure: true,
              onChanged: (value) {
                context.read<ChangePasswordCubit>().onNewPasswordChanged(value);
              },
              errorText:
                  context.read<ChangePasswordCubit>().state.errTextNewPassField,
            );
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
                    context.read<ChangePasswordCubit>().changePassword(context);
                  }
                : null,
            title: S.of(context).change,
          );
        }),
        const SizedBox(height: 8),
      ],
    );
  }
}
