import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../application/services/socket/dto/dto.dart';

class ChatIntrustorState {
  const ChatIntrustorState({
    this.loading = false,
    this.listChat = const [],
    this.roomId,
    this.messageField = "",
    this.listIMGPicker = const [],
    this.listFilePicker = const [],
  });

  final bool loading;
  final List<ReceiveMessage> listChat;
  final String? roomId;
  final String messageField;
  final List<XFile> listIMGPicker;
  final List<FilePickerResult> listFilePicker;

  ChatIntrustorState copyWith({
    bool? loading,
    List<ReceiveMessage>? listChat,
    String? roomId,
    String? messageField,
    List<XFile>? listIMGPicker,
    List<FilePickerResult>? listFilePicker,
  }) {
    return ChatIntrustorState(
        loading: loading ?? this.loading,
        listChat: listChat ?? this.listChat,
        roomId: roomId ?? this.roomId,
        messageField: messageField ?? this.messageField,
        listIMGPicker: listIMGPicker ?? this.listIMGPicker,
        listFilePicker: listFilePicker ?? this.listFilePicker);
  }
}
