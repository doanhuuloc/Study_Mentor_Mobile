import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../application/services/ai/ai.dart';
import '../../../../application/services/ai/dto/enum.dart';
import '../../../../application/services/file/file.dart';
import '../../../../application/services/socket/dto/dto.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../bases/file_cubit/file_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'chat_ai_state.dart';

class ChatAICubit extends SafeCubit<ChatAIState> {
  ChatAICubit({
    required this.aiController,
    required this.failureHandlerManager,
    required this.fileCubit,
    required this.userId,
    required this.idChatAI,
    required this.typeAI,
    required this.controller,
    this.roomId,
  }) : super(ChatAIState(roomId: roomId, listChat: [])) {
    if (roomId != null) {
      getListChat(roomId: roomId!);
    }
  }

  final AIController aiController;
  final FailureHandlerManager failureHandlerManager;
  final FileCubit fileCubit;
  final String userId;
  final String idChatAI;
  final String? roomId;
  final TypeAI? typeAI;
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
    emit(state.copyWith(loading: true));
    final String message = state.messageField;
    onChangedMessage("");
    List<FileRequest>? files;
    if (typeAI == TypeAI.pay) {
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
    }
    addChat(ChatAIResponse(
      createAt: DateTime.now(),
      content: message,
      senderId: userId,
      files: files,
    ));

    aiController
        .chatAI(
            chatAIRequest: SendMessage(
      content: message,
      senderId: userId,
      recipientId: idChatAI,
      roomId: state.roomId,
      files: files,
    ))
        .then((msgres) {
      if (msgres.isLeft) {
        failureHandlerManager.handle(msgres.left);
        emit(state.copyWith(loading: false));
      }

      if (msgres.isRight) {
        addChat(msgres.right);
        emit(state.copyWith(loading: false));
      }
    });
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
