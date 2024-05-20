import 'dart:async';

import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:study_mentor_mobile/utilities/logging/logging.dart';

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
    // getListChat(roomId: roomId);
    receiveMessage();
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
    addChat(ReceiveMessage(
      content: state.messageField,
      roomId: roomId,
      senderId: userId,
      recipientId: intrustor.id,
      createdAt: DateTime.now(),
    ));
    socketCubit.sendMessage(
        sendMessage: SendMessage(
      content: state.messageField,
      roomId: roomId,
      recipientId: intrustor.id ?? "",
      senderId: userId,
    ));
  }

  void receiveMessage() {
    logging.i("on");
    Socket s = io(
        "http://188.166.176.114:3000?userId=c00478d9-020a-4b38-8eea-68c4178aca61",
        OptionBuilder().setTransports(['websocket']).enableForceNew().build());
    s.on(SocketEvent.RECEIVE_MESSAGE.event, (data) {
      logging.i(data);
    });
    // socketCubit.state.socket!.on("receive-message", (data) {
    //   logging.i(data);
    // });

    socketCubit.receiveMessage((ReceiveMessage receiveMessage) {
      addChat(receiveMessage);
    });
  }

  void onChangedMessage(String value) {
    emit(state.copyWith(messageField: value));
  }

  void addChat(ReceiveMessage message) {
    emit(state.copyWith(listChat: [...state.listChat, message]));
  }
}
