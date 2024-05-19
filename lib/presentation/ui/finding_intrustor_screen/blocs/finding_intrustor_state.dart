import '../../../../application/services/socket/dto/dto.dart';

class FindingIntrustorState {
  const FindingIntrustorState({
    this.isLoading = false,
  });

  final bool isLoading;

  copyWith({
    bool? isLoading,
    int? page,
    int? totalPages,
    List<Tutor>? tutor,
  }) {
    return FindingIntrustorState(
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
