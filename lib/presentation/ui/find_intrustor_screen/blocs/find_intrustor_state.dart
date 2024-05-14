class FindIntrustorState {
  const FindIntrustorState({this.isLoading = false});

  final bool isLoading;

  copyWith({
    required bool? isLoading,
  }) {
    return FindIntrustorState(isLoading: isLoading ?? this.isLoading);
  }
}
