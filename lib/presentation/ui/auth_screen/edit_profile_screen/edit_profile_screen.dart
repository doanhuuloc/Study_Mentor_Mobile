import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/gen/app_colors.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/shared/base_infinite_loading/image_loading.dart';
import 'package:study_mentor_mobile/presentation/shared/handlers/failure_handler/failure_handler_manager.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/app_bar/common_app_bar.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/textfields/common_textfield.dart';

import '../../../../application/services/app/app_config/app_config.dart';
import '../../../../application/services/user/user.dart';
import '../../../bases/file_cubit/file_cubit.dart';
import '../../../bases/user_cubit/user_cubit.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/buttons/bottom_button.dart';
import '../../../shared/widgets/drop_down_bar/drop_down_bar.dart';
import 'blocs/edit_profile_cubit.dart';
import 'blocs/edit_profile_state.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String _converDate(String date, {bool reverse = false}) {
    if (date == "") {
      return "";
    }
    String outputDate;
    if (reverse) {
      List<String> parts = date.split('/');
      outputDate = "${parts[2]}-${parts[1]}-${parts[0]}";
    } else {
      List<String> parts = date.split('-');
      outputDate = "${parts[2]}/${parts[1]}/${parts[0]}";
    }
    return outputDate;
  }

  @override
  Widget build(BuildContext context) {
    final helperImage = ImageLoading(
      height: 100,
      width: 100,
      borderRadius: BorderRadius.circular(100),
    );
    return BlocProvider<EditProfileCubit>(
      create: (context) => EditProfileCubit(
        user:
            context.read<UserCubit>().state.detail ?? const UserInfoResponse(),
        failureHandlerManager: context.read<FailureHandlerManager>(),
        userController: context.read<UserController>(),
        fileCubit: context.read<FileCubit>(),
        userCubit: context.read<UserCubit>(),
      ),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: CommonAppBar(
            title: Text(S.of(context).editProfile),
            color: AppColors.blue.shade50,
          ),
          body: Column(children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GapItems(
                    crossAxisAlignmentRow: CrossAxisAlignment.start,
                    gap: 10,
                    items: [
                      BlocBuilder<EditProfileCubit, EditProfileState>(
                        buildWhen: (previous, current) =>
                            previous.user?.avatar != current.user?.avatar,
                        builder: (context, state) {
                          return Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                              bottom: 20,
                            ),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () async {
                                await context
                                    .read<EditProfileCubit>()
                                    .changeAvatar();
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.gray.shade200,
                                    ),
                                    child: state.user?.avatar?.fileKey != null
                                        ? ClipOval(
                                            child: Image.network(
                                              '${context.read<AppConfig>().imagePath}/${state.user!.avatar!.fileKey!}',
                                              loadingBuilder:
                                                  helperImage.loadingBuilder,
                                              errorBuilder:
                                                  helperImage.errorBuilder,
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        : null,
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          shape: BoxShape.circle,
                                        ),
                                        padding: const EdgeInsets.all(5),
                                        child: const Icon(
                                          Icons.edit,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      Text(
                        S.of(context).fullname,
                        style: Styles.s18().withWeight(FontWeight.w600),
                      ),
                      CommonTextField(
                        initialValue: context
                            .read<EditProfileCubit>()
                            .state
                            .user
                            ?.fullName,
                        onChanged: (value) => context
                            .read<EditProfileCubit>()
                            .onChangeFullName(value),
                      ),
                      Text(
                        S.of(context).email,
                        style: Styles.s18().withWeight(FontWeight.w600),
                      ),
                      CommonTextField(
                        initialValue:
                            context.read<EditProfileCubit>().state.user?.email,
                        onChanged: (value) => context
                            .read<EditProfileCubit>()
                            .onChangeEmail(value),
                      ),
                      Text(
                        S.of(context).phone,
                        style: Styles.s18().withWeight(FontWeight.w600),
                      ),
                      CommonTextField(
                        initialValue:
                            context.read<EditProfileCubit>().state.user?.phone,
                        onChanged: (value) => context
                            .read<EditProfileCubit>()
                            .onChangePhone(value),
                      ),
                      Text(
                        S.of(context).gender,
                        style: Styles.s18().withWeight(FontWeight.w600),
                      ),
                      BlocBuilder<EditProfileCubit, EditProfileState>(
                          buildWhen: (previous, current) =>
                              previous.user?.gender != current.user?.gender,
                          builder: (context, state) {
                            return DropDownBar(
                              data: [0, 1]
                                  .map((e) => DropDownBarData<int>(
                                      value: e,
                                      title: e == 0
                                          ? S.of(context).male
                                          : S.of(context).female))
                                  .toList(),
                              value: context
                                  .read<EditProfileCubit>()
                                  .state
                                  .user
                                  ?.gender,
                              onChanged: (value) => context
                                  .read<EditProfileCubit>()
                                  .onChangeGender(value),
                            );
                          }),
                      Text(
                        S.of(context).dateOfbirth,
                        style: Styles.s18().withWeight(FontWeight.w600),
                      ),
                      CommonTextField(
                        initialValue: context
                            .read<EditProfileCubit>()
                            .state
                            .user
                            ?.dateOfBirth
                            .toString(),
                        onChanged: (value) => context
                            .read<EditProfileCubit>()
                            .onChangeDateOfBirth(value),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
            BottomButton(
              onPress: () async {
                await context.read<EditProfileCubit>().updateProfile(context);
              },
              title: S.of(context).save,
            )
          ]),
        );
      }),
    );
  }
}
