import 'dart:async';

import '../../../../application/services/ai/ai.dart';
import '../../../../application/services/app/app_config/app_config.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'history_state.dart';

class HistoryCubit extends SafeCubit<HistoryState> {
  HistoryCubit({
    required this.aiController,
    required this.appConfig,
    required this.userId,
    required this.failureHandlerManager,
  }) : super(const HistoryState()) {
    _fetchData();
  }

  final AIController aiController;
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

  Future<void> _fetchData() async {
    await getListChatGpt();
  }

  void reload() {
    _fetchData();
  }
}
