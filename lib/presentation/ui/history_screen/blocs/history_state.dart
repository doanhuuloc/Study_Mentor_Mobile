import '../../../../application/services/ai/ai.dart';
import '../../../../application/services/education/education.dart';

class HistoryState {
  const HistoryState({
    this.loading = false,
    this.listChatGpt = const [],
    this.listChatGemini = const [],
    this.listChatPay = const [],
    this.listQuestion = const [],
  });

  final bool loading;
  final List<ListRoomChatResponse> listChatGpt;
  final List<ListRoomChatResponse> listChatGemini;
  final List<ListRoomChatResponse> listChatPay;
  final List<GetQuestionInfoResponse> listQuestion;

  HistoryState copyWith({
    bool? loading,
    List<ListRoomChatResponse>? listChatGpt,
    List<ListRoomChatResponse>? listChatGemini,
    List<ListRoomChatResponse>? listChatPay,
    List<GetQuestionInfoResponse>? listQuestion,
  }) {
    return HistoryState(
      loading: loading ?? this.loading,
      listChatGpt: listChatGpt ?? this.listChatGpt,
      listChatGemini: listChatGemini ?? this.listChatGemini,
      listChatPay: listChatPay ?? this.listChatPay,
      listQuestion: listQuestion ?? this.listQuestion,
    );
  }
}
