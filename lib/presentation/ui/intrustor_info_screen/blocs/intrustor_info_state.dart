import '../../../../application/services/user/response/response.dart';

class IntrustorInfoState {
  const IntrustorInfoState({
    this.tutor,
    this.isAccepted,
    this.waittingTutor = false,
  });

  final UserInfoResponse? tutor;
  final int? isAccepted;
  final bool waittingTutor;

  copyWith({
    UserInfoResponse? tutor,
    int? isAccepted,
    bool? waittingTutor,
  }) {
    return IntrustorInfoState(
      tutor: tutor ?? this.tutor,
      isAccepted: isAccepted ?? this.isAccepted,
      waittingTutor: waittingTutor ?? this.waittingTutor,
    );
  }
}
