import '../../../../application/services/ai/ai.dart';

class HistoryState {
  const HistoryState({
    this.loading = false,
    this.listChatGpt,
    this.listChatGemini,
  });

  final bool loading;
  final List<ListRoomChatResponse>? listChatGpt;
  final List<ListRoomChatResponse>? listChatGemini;

  HistoryState copyWith({
    bool? loading,
    List<ListRoomChatResponse>? listChatGpt,
    List<ListRoomChatResponse>? listChatGemini,
  }) {
    return HistoryState(
      loading: loading ?? this.loading,
      listChatGpt: listChatGpt ?? this.listChatGpt,
      listChatGemini: listChatGemini ?? this.listChatGemini,
    );
  }
}
