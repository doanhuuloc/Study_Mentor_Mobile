import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../gen/locale/app_localizations.dart';
import '../../../../shared/widgets/buttons/primary_button.dart';
import '../../../../shared/widgets/drop_down_bar/drop_down_bar.dart';
import '../../../../shared/widgets/textfields/common_textfield.dart';

import '../bloc/register_cubit.dart';
import '../bloc/register_state.dart';

class RegisterFormSection extends StatelessWidget {
  const RegisterFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonTextField(
          hintText: S.of(context).fullname,
          onChanged: (value) {
            context.read<RegisterCubit>().onFullNameChanged(value);
          },
        ),
        const SizedBox(height: 12),
        CommonTextField(
          hintText: S.of(context).email,
          onChanged: (value) {
            context.read<RegisterCubit>().onEmailChanged(value);
          },
        ),
        const SizedBox(height: 12),
        CommonTextField(
          hintText: S.of(context).password,
          obscure: true,
          onChanged: (value) {
            context.read<RegisterCubit>().onPasswordChanged(value);
          },
        ),
        const SizedBox(height: 12),
        BlocBuilder<RegisterCubit, RegisterState>(
            buildWhen: (previous, current) =>
                previous.genderField != current.genderField,
            builder: (context, state) {
              return DropDownBar(
                hintText: S.of(context).gender,
                data: [0, 1]
                    .map((e) => DropDownBarData<int>(
                        value: e,
                        title:
                            e == 0 ? S.of(context).male : S.of(context).female))
                    .toList(),
                value: state.genderField,
                onChanged: (value) =>
                    context.read<RegisterCubit>().onGenderChanged(value),
              );
            }),
        const SizedBox(height: 32),
        BlocBuilder<RegisterCubit, RegisterState>(buildWhen: (prev, curr) {
          return prev.canSubmit != curr.canSubmit;
        }, builder: (context, state) {
          return PrimaryButton.round(
            onPressed: state.canSubmit
                ? () {
                    context.read<RegisterCubit>().onRegisterWithUserInfo();
                  }
                : null,
            title: S.of(context).register,
          );
        }),
        const SizedBox(height: 8),
      ],
    );
  }
}
