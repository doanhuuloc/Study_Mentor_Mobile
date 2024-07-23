import '../../../../application/services/ai/ai.dart';
import '../../../../application/services/education/education.dart';

class HistoryState {
  const HistoryState({
    this.loading = false,
    this.listChatAI = const [],
    this.listChatPay = const [],
    this.listQuestion = const [],
    this.listReport = const [],
    this.currentTabTutor = QuestionStatus.NEW,
    this.page = 0,
    this.totalPage = 0,
  });

  final bool loading;
  final List<ListRoomChatResponse> listChatAI;
  final List<ListRoomChatResponse> listChatPay;
  final List<GetQuestionInfoResponse> listQuestion;
  final List<ReportQuestionResponse> listReport;
  final QuestionStatus currentTabTutor;
  final int page;
  final int totalPage;

  HistoryState copyWith({
    bool? loading,
    List<ListRoomChatResponse>? listChatAI,
    List<ListRoomChatResponse>? listChatPay,
    List<GetQuestionInfoResponse>? listQuestion,
    List<ReportQuestionResponse>? listReport,
    QuestionStatus? currentTabTutor,
    int? page,
    int? totalPage,
  }) {
    return HistoryState(
      loading: loading ?? this.loading,
      listChatAI: listChatAI ?? this.listChatAI,
      listChatPay: listChatPay ?? this.listChatPay,
      listQuestion: listQuestion ?? this.listQuestion,
      listReport: listReport ?? this.listReport,
      currentTabTutor: currentTabTutor ?? this.currentTabTutor,
      page: page ?? this.page,
      totalPage: totalPage ?? this.totalPage,
    );
  }
}

enum HistoryFilter { chatGpt, chatGemini, chatAiPay, question, report }
