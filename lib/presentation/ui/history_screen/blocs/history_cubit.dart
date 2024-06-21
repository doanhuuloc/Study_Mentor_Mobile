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
  }) : super(const HistoryState()) {
    _fetchData();
  }

  final AIController aiController;
  final EducationController educationController;
  final AppConfig appConfig;
  final String userId;
  final FailureHandlerManager failureHandlerManager;

  Future<void> getListChatGpt() async {
    emit(state.copyWith(loading: true));
    final listChatGpt = await aiController.getListRoomChat(
      userId: userId,
      idChatAI: appConfig.chatGpt,
    );
    if (listChatGpt.isLeft) {
      failureHandlerManager.handle(listChatGpt.left);
    }

    if (listChatGpt.isRight) {
      emit(state.copyWith(
        loading: false,
        listChatGpt: listChatGpt.right,
      ));
    } else {
      emit(state.copyWith(loading: false));
    }
  }

  Future<void> getListChatGemini() async {
    emit(state.copyWith(loading: true));
    final listChatGemini = await aiController.getListRoomChat(
      userId: userId,
      idChatAI: appConfig.chatGemini,
    );

    listChatGemini.handleLeft((failure) {
      failureHandlerManager.handle(failure);
    });

    if (listChatGemini.isRight) {
      emit(state.copyWith(
        loading: false,
        listChatGemini: listChatGemini.right,
      ));
    }
  }

  Future<void> getListChayPay() async {
    emit(state.copyWith(loading: true));
    final listChatPay = await aiController.getListRoomChat(
      userId: userId,
      idChatAI: appConfig.chatPay,
    );

    listChatPay.handleLeft((failure) {
      failureHandlerManager.handle(failure);
    });

    if (listChatPay.isRight) {
      emit(state.copyWith(
        loading: false,
        listChatPay: listChatPay.right,
      ));
    }
  }

  Future<void> getListQuestion(QuestionStatus questionStatus) async {
    emit(state.copyWith(loading: true));
    final listQuestion =
        await educationController.getListQuestion(status: questionStatus.name);
    if (listQuestion.isLeft) {
      failureHandlerManager.handle(listQuestion.left);
    }

    if (listQuestion.isRight) {
      emit(state.copyWith(
        loading: false,
        listQuestion: questionStatus == state.currentTabTutor
            ? listQuestion.right.data
            : null,
      ));
    }
  }

  void setTabTutor(QuestionStatus value) {
    emit(state.copyWith(currentTabTutor: value));
  }

  Future<void> _fetchData() async {
    await getListChatGpt();
  }

  void reload() {
    _fetchData();
  }
}
