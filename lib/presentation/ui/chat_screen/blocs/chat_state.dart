import '../../../../application/services/ai/ai.dart';

class ChatState {
  const ChatState({
    this.loading = false,
    this.listChat = const [],
    this.roomId,
    this.messageField = "",
  });

  final bool loading;
  final List<ChatAIResponse> listChat;
  final String? roomId;
  final String messageField;

  ChatState copyWith({
    bool? loading,
    List<ChatAIResponse>? listChat,
    String? roomId,
    String? messageField,
  }) {
    return ChatState(
      loading: loading ?? this.loading,
      listChat: listChat ?? this.listChat,
      roomId: roomId ?? this.roomId,
      messageField: messageField ?? this.messageField,
    );
  }
}
