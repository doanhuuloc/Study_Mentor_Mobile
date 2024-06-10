import '../../../../application/services/user/response/response.dart';

class IntrustorInfoState {
  const IntrustorInfoState({
    this.tutor,
    this.isAccepted,
  });

  final UserInfoResponse? tutor;
  final int? isAccepted;

  copyWith({
    UserInfoResponse? tutor,
    int? isAccepted,
  }) {
    return IntrustorInfoState(
      tutor: tutor ?? this.tutor,
      isAccepted: isAccepted ?? this.isAccepted,
    );
  }
}
