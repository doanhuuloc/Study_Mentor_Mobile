import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../application/services/socket/dto/dto.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../bases/socket_cubit/socket_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'chat_intrustor_state.dart';

class ChatIntrustorCubit extends SafeCubit<ChatIntrustorState> {
  ChatIntrustorCubit({
    required this.failureHandlerManager,
    required this.socketCubit,
    required this.userId,
    required this.intrustor,
    required this.controller,
    required this.roomId,
  }) : super(ChatIntrustorState(roomId: roomId, listChat: [])) {
    getListChat(roomId: roomId);
  }

  final FailureHandlerManager failureHandlerManager;
  final SocketCubit socketCubit;
  final String userId;
  final Tutor intrustor;
  final String roomId;
  final ScrollController controller;

  Future<void> getListChat({required String roomId}) async {
    // final listChat =
    //     await aiController.getDetailedMessageRoomChat(roomId: roomId);
    // if (listChat.isLeft) {
    //   failureHandlerManager.handle(listChat.left);
    // }

    // if (listChat.isRight) {
    //   emit(state.copyWith(listChat: listChat.right));
    // }
  }

  void sendMessage() {
    addChat();
    socketCubit.sendMessage(
        sendMessage: SendMessage(
      content: state.messageField,
      roomId: roomId,
      recipientId: intrustor.id ?? "",
      senderId: userId,
    ));
  }

  void receiveMessage() {
    socketCubit.receiveMessage((ReceiveMessage receiveMessage) {
      addChat();
    });
  }

  void onChangedMessage(String value) {
    emit(state.copyWith(messageField: value));
  }

  void addChat() {
    // final newListChat = state.listChat;
    // newListChat.add();
    // emit(state.copyWith(listChat: newListChat));
  }
}
