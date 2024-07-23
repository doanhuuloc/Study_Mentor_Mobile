import 'dart:async';

import '../../../../application/services/ai/ai.dart';
import '../../../../application/services/app/app_config/app_config.dart';
import '../../../../application/services/education/education.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'history_state.dart';

class HistoryCubit extends SafeCubit<HistoryState> {
  HistoryCubit({
    required this.aiController,
    required this.educationController,
    required this.appConfig,
    required this.userId,
    required this.failureHandlerManager,
  }) : super(const HistoryState());

  final AIController aiController;
  final EducationController educationController;
  final AppConfig appConfig;
  final String userId;
  final FailureHandlerManager failureHandlerManager;

  Future<void> getListChatGpt() async {
    final listChatGpt = await aiController.getListRoomChat(
      userId: userId,
      idChatAI: appConfig.chatGpt,
    );
    if (listChatGpt.isLeft) {
      emit(state.copyWith(loading: false));
    }

    if (listChatGpt.isRight) {
      emit(state.copyWith(
        loading: false,
        listChatAI: listChatGpt.right,
      ));
    }
  }

  Future<void> getListChatGemini() async {
    final listChatGemini = await aiController.getListRoomChat(
      userId: userId,
      idChatAI: appConfig.chatGemini,
    );

    listChatGemini.handleLeft((failure) {
      emit(state.copyWith(loading: false));
    });

    if (listChatGemini.isRight) {
      emit(state.copyWith(
        loading: false,
        listChatAI: listChatGemini.right,
      ));
    }
  }

  Future<void> getListChayPay() async {
    final listChatPay = await aiController.getListRoomChat(
      userId: userId,
      idChatAI: appConfig.chatPay,
    );

    listChatPay.handleLeft((failure) {
      emit(state.copyWith(loading: false));
    });

    if (listChatPay.isRight) {
      emit(state.copyWith(
        loading: false,
        listChatPay: listChatPay.right,
      ));
    }
  }

  Future<void> getListQuestion(QuestionStatus questionStatus) async {
    final listQuestion =
        await educationController.getListQuestion(status: questionStatus.name);
    if (listQuestion.isLeft) {
      emit(state.copyWith(loading: false));
    }

    if (listQuestion.isRight) {
      emit(state.copyWith(
        loading: false,
        listQuestion: questionStatus == state.currentTabTutor
            ? listQuestion.right.data
            : null,
        page: state.page + 1,
        totalPage: listQuestion.right.paginationInfo?.totalPages,
      ));
    }
  }

  Future<void> getListReport() async {
    final listReport = await educationController.getListReport();
    if (listReport.isLeft) {
      emit(state.copyWith(loading: false));
    }

    if (listReport.isRight) {
      emit(state.copyWith(
        loading: false,
        listReport: listReport.right.data,
        page: state.page + 1,
        totalPage: listReport.right.paginationInfo?.totalPages,
      ));
    }
  }

  void setTabTutor(QuestionStatus value) {
    emit(state.copyWith(currentTabTutor: value));
  }

  Future<void> fetchData(HistoryFilter historyFilter,
      {QuestionStatus? questionStatus}) async {
    if (state.page >= state.totalPage) {
      return;
    }
    emit(state.copyWith(loading: true));
    switch (historyFilter) {
      case HistoryFilter.chatGpt:
        await getListChatGpt();
        break;
      case HistoryFilter.chatGemini:
        await getListChatGemini();
        break;
      case HistoryFilter.chatAiPay:
        await getListChayPay();
        break;
      case HistoryFilter.question:
        await getListQuestion(questionStatus ?? state.currentTabTutor);
        break;
      case HistoryFilter.report:
        await getListReport();
        break;
    }
  }

  Future<void> refreshhData(HistoryFilter historyFilter,
      {QuestionStatus? questionStatus}) async {
    emit(state.copyWith(loading: true, page: 0, totalPage: 0));

    switch (historyFilter) {
      case HistoryFilter.chatGpt:
        await getListChatGpt();
        break;
      case HistoryFilter.chatGemini:
        await getListChatGemini();
        break;
      case HistoryFilter.chatAiPay:
        await getListChayPay();
        break;
      case HistoryFilter.question:
        await getListQuestion(questionStatus ?? state.currentTabTutor);
        break;
      case HistoryFilter.report:
        await getListReport();
        break;
    }
  }
}
