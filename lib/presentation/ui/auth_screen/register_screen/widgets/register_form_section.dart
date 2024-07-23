import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:intl/intl.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import '../../../../gen/app_colors.dart';
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
          usePasswordIcon: true,
          onChanged: (value) {
            context.read<RegisterCubit>().onPasswordChanged(value);
          },
        ),
        const SizedBox(height: 12),
        BlocBuilder<RegisterCubit, RegisterState>(
          buildWhen: (previous, current) =>
              previous.dateOfBirth != current.dateOfBirth,
          builder: (context, state) {
            return InkWell(
              onTap: () async {
                final datePicked = await DatePicker.showSimpleDatePicker(
                  context,
                  initialDate: DateTime(2000, 1, 1),
                  firstDate: DateTime(DateTime.now().year - 100),
                  lastDate: DateTime(DateTime.now().year),
                  dateFormat: "dd-MMMM-yyyy",
                  locale: DateTimePickerLocale.zh_cn,
                  looping: true,
                  backgroundColor: AppColors.blue.shade50,
                  titleText: S.of(context).dateOfbirth,
                  cancelText: S.of(context).cancel,
                  confirmText: S.of(context).confirm,
                );

                if (datePicked != null) {
                  if (!context.mounted) {
                    return;
                  }
                  context.read<RegisterCubit>().onChangeDateOfBirth(datePicked);
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300)),
                child: Text(
                  state.dateOfBirth == null
                      ? S.of(context).dateOfbirth
                      : DateFormat("dd-MM-yyyy").format(state.dateOfBirth!),
                  style: Styles.s15()
                      .withColor(
                        state.dateOfBirth == null
                            ? AppColors.text.bodyText
                            : AppColors.text.main,
                      )
                      .withLetterSpacing(-2.5 / 100),
                ),
              ),
            );
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
