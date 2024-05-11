import 'dart:async';

import 'package:study_mentor_mobile/presentation/bases/user_cubit/user_cubit.dart';

import '../../../../application/services/ai/ai.dart';
import '../../../../application/services/app/app_config/app_config.dart';
import '../../../../utilities/logging/logging.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import 'history_state.dart';

class HistoryCubit extends SafeCubit<HistoryState> {
  HistoryCubit({
    required this.aiController,
    required this.appConfig,
    required this.userCubit,
  }) : super(const HistoryState()) {
    _fetchData();
  }

  final AIController aiController;
  final AppConfig appConfig;
  final UserCubit userCubit;

  Future<void> getListChatGpt() async {
    emit(state.copyWith(loading: true));
    final listChatGpt = await aiController.getListRoomChat(
      // userId: userCubit.state.detail!.id!,
      userId: "c00478d9-020a-4b38-8eea-68c4178aca61",
      idChatAI: appConfig.chatGpt,
    );

    listChatGpt.handleLeft((failure) {
      logging.i(failure.toString());
    });

    emit(state.copyWith(
      loading: false,
      listChatGpt: listChatGpt.right,
    ));
  }

  Future<void> getListChatGemini() async {
    emit(state.copyWith(loading: true));
    final listChatGemini = await aiController.getListRoomChat(
      // userId: userCubit.state.detail!.id!,
      userId: "c00478d9-020a-4b38-8eea-68c4178aca61",
      idChatAI: appConfig.chatGemini,
    );

    listChatGemini.handleLeft((failure) {
      logging.i(failure.toString());
    });

    emit(state.copyWith(
      loading: false,
      listChatGemini: listChatGemini.right,
    ));
  }

  Future<void> _fetchData() async {
    await Future.wait([]);
  }

  void reload() {
    _fetchData();
  }
}
