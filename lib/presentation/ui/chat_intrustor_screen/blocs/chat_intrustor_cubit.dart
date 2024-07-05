import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:study_mentor_mobile/application/services/file/file.dart';

import '../../../../application/services/socket/dto/dto.dart';
import '../../../../application/services/user/response/response.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../bases/file_cubit/file_cubit.dart';
import '../../../bases/socket_cubit/socket_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'chat_intrustor_state.dart';

class ChatIntrustorCubit extends SafeCubit<ChatIntrustorState> {
  ChatIntrustorCubit({
    required this.failureHandlerManager,
    required this.socketCubit,
    required this.fileCubit,
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
  final FileCubit fileCubit;
  final String userId;
  final UserInfoResponse intrustor;
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

  Future<void> sendMessage() async {
    final message = state.messageField;
    List<FileRequest>? files;
    if (state.listFilePicker.length + state.listIMGPicker.length > 0) {
      files = await fileCubit.uploadListFile([
        ...state.listIMGPicker
            .map((e) => FileData(file: File(e.path), fileName: e.name)),
        ...state.listFilePicker.map((e) => FileData(
            file: File(e.files.single.path ?? ""),
            fileName: e.files.single.name))
      ]);
      if (state.listFilePicker.isNotEmpty) {
        state.listFilePicker.clear();
      }
      if (state.listIMGPicker.isNotEmpty) {
        state.listIMGPicker.clear();
      }
    }

    addChat(ReceiveMessage(
      content: message,
      roomId: roomId,
      senderId: userId,
      recipientId: intrustor.id,
      files: files,
      createdAt: DateTime.now(),
    ));

    socketCubit.sendMessage(
        sendMessage: SendMessage(
      content: message,
      roomId: roomId,
      recipientId: intrustor.id ?? "",
      files: files,
      senderId: userId,
    ));
  }

  void receiveMessage() {
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

  void addImgPicker(List<XFile> imagePicker) {
    emit(state
        .copyWith(listIMGPicker: [...state.listIMGPicker, ...imagePicker]));
  }

  void addFilePicker(FilePickerResult filePickerResult) {
    emit(state
        .copyWith(listFilePicker: [...state.listFilePicker, filePickerResult]));
  }

  void removeImgPicker(XFile imagePicker) {
    emit(state.copyWith(
        listIMGPicker:
            state.listIMGPicker.where((e) => e != imagePicker).toList()));
  }

  void removeFilePicker(FilePickerResult filePickerResult) {
    emit(state.copyWith(
        listFilePicker:
            state.listFilePicker.where((e) => e != filePickerResult).toList()));
  }
}
