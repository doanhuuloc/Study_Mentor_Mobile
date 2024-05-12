import 'dart:async';

import '../../../../application/services/ai/ai.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'chat_state.dart';

class ChatCubit extends SafeCubit<ChatState> {
  ChatCubit({
    required this.aiController,
    required this.failureHandlerManager,
    required this.userId,
    required this.idChatAI,
    this.roomId,
  }) : super(ChatState(roomId: roomId)) {
    if (roomId != null) {
      getListChat(roomId: roomId!);
    }
  }

  final AIController aiController;
  final FailureHandlerManager failureHandlerManager;
  final String userId;
  final String idChatAI;
  final String? roomId;

  Future<void> getListChat({required String roomId}) async {
    final listChat =
        await aiController.getDetailedMessageRoomChat(roomId: roomId);
    if (listChat.isLeft) {
      failureHandlerManager.handle(listChat.left);
    }

    if (listChat.isRight) {
      emit(state.copyWith(listChat: listChat.right));
    }
  }

  Future<void> sendMessageWithAI() async {
    final String message = state.messageField;
    final String room = await createRoomChat(title: message);
    if (room != "") {
      final msgres = await aiController.chatAI(
        chatAIRequest: ChatAIRequest(question: message),
        userId: userId,
        idChatAI: idChatAI,
        roomId: room,
      );

      if (msgres.isLeft) {
        failureHandlerManager.handle(msgres.left);
      }

      if (msgres.isRight) {
        final newListChat = state.listChat;
        newListChat.addAll([
          ChatAIResponse(
            createAt: DateTime.now(),
            value: message,
            senderId: userId,
          ),
          msgres.right,
        ]);

        emit(state.copyWith(listChat: newListChat));
      }
    }
  }

  Future<String> createRoomChat({required String title}) async {
    if (state.roomId != null) {
      return "";
    }

    final roomres = await aiController.createRoomChat(
      createRoomChatRequest: CreateRoomChatRequest(TitleRoom: title),
      userId: userId,
      idChatAI: idChatAI,
    );
    if (roomres.isLeft) {
      failureHandlerManager.handle(roomres.left);
    }
    if (roomres.isRight) {
      emit(state.copyWith(roomId: roomres.right.RoomId));
    }
    return roomres.right.RoomId ?? "";
  }

  void onChangedMessage(String value) {
    emit(state.copyWith(messageField: value));
  }

  Future<void> _fetchData() async {}

  void reload() {
    _fetchData();
  }
}
