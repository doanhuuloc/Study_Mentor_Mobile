import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';

import '../../../../../application/services/file/file.dart';
import '../../../../../application/services/user/user.dart';
import '../../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../../bases/file_cubit/file_cubit.dart';
import '../../../../bases/user_cubit/user_cubit.dart';
import '../../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'edit_profile_state.dart';

class EditProfileCubit extends SafeCubit<EditProfileState> {
  EditProfileCubit({
    required this.failureHandlerManager,
    required this.user,
    required this.userController,
    required this.fileCubit,
    required this.userCubit,
  }) : super(const EditProfileState()) {
    emit(state.copyWith(user: user));
  }

  final FailureHandlerManager failureHandlerManager;
  final UserInfoResponse user;
  final UserController userController;
  final UserCubit userCubit;
  final FileCubit fileCubit;

  void onChangeFullName(String value) {
    emit(state.copyWith(user: state.user?.copyWith(fullName: value)));
  }

  void onChangeEmail(String value) {
    emit(state.copyWith(user: state.user?.copyWith(email: value)));
  }

  void onChangePhone(String value) {
    emit(state.copyWith(user: state.user?.copyWith(phone: value)));
  }

  void onChangeGender(int value) {
    emit(state.copyWith(user: state.user?.copyWith(gender: value)));
  }

  void onChangeDateOfBirth(String value) {
    emit(state.copyWith(user: state.user?.copyWith(dateOfBirth: value)));
  }

  Future<void> updateProfile(BuildContext context) async {
    final res = await userController.updateProfile(
        updateProfileRequest: UpdateProfileRequest(
      fullName: state.user?.fullName,
      email: state.user?.email,
      phone: state.user?.phone,
      gender: state.user?.gender,
      dateOfBirth: state.user?.dateOfBirth,
    ));
    await updateAvatar();
    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      if (!context.mounted) {
        return;
      }
      AlertRouteData(content: S.of(context).editProfileSuccess).push(context);
      await userCubit.fetchUserData();
    }
  }

  Future<void> changeAvatar() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      final avatar = await fileCubit.uploadFile(
        File(result.files.single.path ?? ""),
        result.files.single.name,
      );
      if (avatar != null) {
        emit(state.copyWith(user: state.user?.copyWith(avatar: avatar)));
      }
    }
  }

  Future<void> updateAvatar() async {
    final res = await userController.updateAvatar(
        fileRequest: state.user?.avatar ?? const FileRequest());
    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      await userCubit.fetchUserData();
    }
  }
}
