import '../../../../application/services/user/user.dart';

class EditProfileState {
  const EditProfileState({
    this.isLoading = false,
    this.user,
  });

  final bool isLoading;
  final UserInfoResponse? user;
  copyWith({
    bool? isLoading,
    UserInfoResponse? user,
  }) {
    return EditProfileState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
    );
  }
}
