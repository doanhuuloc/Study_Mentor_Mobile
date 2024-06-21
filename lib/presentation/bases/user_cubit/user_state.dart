part of 'user_cubit.dart';

class UserState extends Equatable {
  const UserState({
    this.apiStatus = ApiStatus.initial,
    this.detail,
    this.userFullName,
    this.fcmToken,
  });

  final String? userFullName;
  final UserInfoResponse? detail;
  final ApiStatus apiStatus;
  final String? fcmToken;

  UserState copyWith({
    ApiStatus? apiStatus,
    UserInfoResponse? detail,
    String? userFullName,
    String? fcmToken,
  }) {
    return UserState(
      apiStatus: apiStatus ?? this.apiStatus,
      detail: detail ?? this.detail,
      userFullName: userFullName ?? this.userFullName,
      fcmToken: fcmToken ?? this.fcmToken,
    );
  }

  @override
  List<Object?> get props => [
        apiStatus,
        userFullName,
        detail,
      ];
}
