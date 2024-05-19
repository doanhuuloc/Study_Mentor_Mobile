import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../application/services/ai/ai.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'chat_ai_state.dart';

class ChatAICubit extends SafeCubit<ChatAIState> {
  ChatAICubit({
    required this.aiController,
    required this.failureHandlerManager,
    required this.userId,
    required this.idChatAI,
    required this.controller,
    this.roomId,
  }) : super(ChatAIState(roomId: roomId, listChat: [])) {
    if (roomId != null) {
      getListChat(roomId: roomId!);
    }
  }

  final AIController aiController;
  final FailureHandlerManager failureHandlerManager;
  final String userId;
  final String idChatAI;
  final String? roomId;
  final ScrollController controller;

  Future<void> getListChat({required String roomId}) async {
    final listChat =
        await aiController.getDetailedMessageRoomChat(roomId: roomId);
    if (listChat.isLeft) {
      failureHandlerManager.handle(listChat.left);
    }

    if (listChat.isRight) {
      emit(state.copyWith(listChat: listChat.right));
      controller.jumpTo(controller.position.maxScrollExtent);
    }
  }

  Future<void> sendMessageWithAI() async {
    final String message = state.messageField;
    onChangedMessage("");
    addChat(ChatAIResponse(
      createAt: DateTime.now(),
      value: message,
      senderId: userId,
    ));

    final msgres = await aiController.chatAI(
      chatAIRequest: ChatAIRequest(question: message),
      userId: userId,
      idChatAI: idChatAI,
      roomId: state.roomId ?? "",
    );

    if (msgres.isLeft) {
      failureHandlerManager.handle(msgres.left);
    }

    if (msgres.isRight) {
      addChat(msgres.right);
    }
  }

  Future<void> createRoomChat() async {
    final roomres = await aiController.createRoomChat(
      createRoomChatRequest:
          CreateRoomChatRequest(TitleRoom: state.messageField),
      userId: userId,
      idChatAI: idChatAI,
    );
    if (roomres.isLeft) {
      failureHandlerManager.handle(roomres.left);
    }
    if (roomres.isRight) {
      emit(state.copyWith(roomId: roomres.right.RoomId));
    }
  }

  void onChangedMessage(String value) {
    emit(state.copyWith(messageField: value));
  }

  void addChat(ChatAIResponse chatAIresponse) {
    final newListChat = state.listChat;
    newListChat.add(chatAIresponse);
    emit(state.copyWith(listChat: newListChat));
    controller.jumpTo(controller.position.maxScrollExtent);
  }
}
