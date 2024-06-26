import '../../../../../application/services/user/response/response.dart';

class FindingIntrustorState {
  const FindingIntrustorState({
    this.tutor,
  });

  final UserInfoResponse? tutor;

  copyWith({
    UserInfoResponse? tutor,
  }) {
    return FindingIntrustorState(tutor: tutor ?? this.tutor);
  }
}
