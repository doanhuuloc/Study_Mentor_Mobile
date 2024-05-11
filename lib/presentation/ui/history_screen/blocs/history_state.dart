import '../../../../application/services/ai/ai.dart';

class HistoryState {
  const HistoryState({
    this.loading = false,
    this.listChatGpt,
    this.listChatGemini,
  });

  final bool loading;
  final GetListRoomChatResponse? listChatGpt;
  final GetListRoomChatResponse? listChatGemini;

  HistoryState copyWith({
    bool? loading,
    GetListRoomChatResponse? listChatGpt,
    GetListRoomChatResponse? listChatGemini,
  }) {
    return HistoryState(
      loading: loading ?? this.loading,
      listChatGpt: listChatGpt ?? this.listChatGpt,
      listChatGemini: listChatGemini ?? this.listChatGemini,
    );
  }
}
