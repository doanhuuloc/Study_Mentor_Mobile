import '../../../../application/services/ai/ai.dart';

class HistoryState {
  const HistoryState({
    this.loading = false,
    this.listChatGpt = const [],
    this.listChatGemini = const [],
    this.listChatPay = const [],
  });

  final bool loading;
  final List<ListRoomChatResponse> listChatGpt;
  final List<ListRoomChatResponse> listChatGemini;
  final List<ListRoomChatResponse> listChatPay;

  HistoryState copyWith({
    bool? loading,
    List<ListRoomChatResponse>? listChatGpt,
    List<ListRoomChatResponse>? listChatGemini,
    List<ListRoomChatResponse>? listChatPay,
  }) {
    return HistoryState(
        loading: loading ?? this.loading,
        listChatGpt: listChatGpt ?? this.listChatGpt,
        listChatGemini: listChatGemini ?? this.listChatGemini,
        listChatPay: listChatPay ?? this.listChatPay);
  }
}
