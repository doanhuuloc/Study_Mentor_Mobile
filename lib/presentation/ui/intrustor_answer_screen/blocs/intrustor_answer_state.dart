import '../../../../application/services/socket/dto/dto.dart';

class IntrustorAnswerState {
  const IntrustorAnswerState({
    this.isLoading = false,
    this.tutor,
    this.roomId,
  });

  final bool isLoading;
  final Tutor? tutor;
  final String? roomId;

  copyWith({
    bool? isLoading,
    Tutor? tutor,
    String? roomId,
  }) {
    return IntrustorAnswerState(
        isLoading: isLoading ?? this.isLoading,
        tutor: tutor ?? this.tutor,
        roomId: roomId ?? this.roomId);
  }
}
