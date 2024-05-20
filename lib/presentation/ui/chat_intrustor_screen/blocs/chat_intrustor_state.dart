import '../../../../application/services/socket/dto/dto.dart';

class ChatIntrustorState {
  const ChatIntrustorState({
    this.loading = false,
    this.listChat = const [],
    this.roomId,
    this.messageField = "",
  });

  final bool loading;
  final List<ReceiveMessage> listChat;
  final String? roomId;
  final String messageField;

  ChatIntrustorState copyWith({
    bool? loading,
    List<ReceiveMessage>? listChat,
    String? roomId,
    String? messageField,
  }) {
    return ChatIntrustorState(
      loading: loading ?? this.loading,
      listChat: listChat ?? this.listChat,
      roomId: roomId ?? this.roomId,
      messageField: messageField ?? this.messageField,
    );
  }
}
