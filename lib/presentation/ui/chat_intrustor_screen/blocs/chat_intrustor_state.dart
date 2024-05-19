
class ChatIntrustorState {
  const ChatIntrustorState({
    this.loading = false,
    this.listChat = const [],
    this.roomId,
    this.messageField = "",
  });

  final bool loading;
  final List listChat;
  final String? roomId;
  final String messageField;

  ChatIntrustorState copyWith({
    bool? loading,
    List? listChat,
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
