import '../../../../../application/services/socket/dto/dto.dart';

class FindIntrustorState {
  const FindIntrustorState({
    this.isLoading = false,
    this.page = 0,
    this.totalPages = 1,
    this.tutor,
    this.findingWithSystem = false,
    this.waittingTutorAccepted = false,
    this.isAccepted = false,
  });

  final bool isLoading;
  final int page;
  final int totalPages;
  final List<Tutor>? tutor;
  final bool findingWithSystem;
  final bool waittingTutorAccepted;
  final bool isAccepted;

  copyWith({
    bool? isLoading,
    int? page,
    int? totalPages,
    List<Tutor>? tutor,
    bool? findingWithSystem,
    bool? waittingTutorAccepted,
    bool? isAccepted,
  }) {
    return FindIntrustorState(
      isLoading: isLoading ?? this.isLoading,
      page: page ?? this.page,
      totalPages: totalPages ?? this.totalPages,
      tutor: [...this.tutor ?? [], ...tutor ?? []],
      findingWithSystem: findingWithSystem ?? this.findingWithSystem,
      waittingTutorAccepted:
          waittingTutorAccepted ?? this.waittingTutorAccepted,
      isAccepted: isAccepted ?? this.isAccepted,
    );
  }
}
