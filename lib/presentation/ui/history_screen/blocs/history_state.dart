class HistoryState {
  const HistoryState({
    this.loading = false,
  });

  final bool loading;

  HistoryState copyWith({
    bool? loading,
  }) {
    return HistoryState(loading: loading ?? this.loading);
  }
}
