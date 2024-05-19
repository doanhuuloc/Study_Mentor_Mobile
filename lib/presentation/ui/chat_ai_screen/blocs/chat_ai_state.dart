import '../../../../application/services/ai/ai.dart';

class ChatAIState {
  const ChatAIState({
    this.loading = false,
    this.listChat = const [],
    this.roomId,
    this.messageField = "",
  });

  final bool loading;
  final List<ChatAIResponse> listChat;
  final String? roomId;
  final String messageField;

  ChatAIState copyWith({
    bool? loading,
    List<ChatAIResponse>? listChat,
    String? roomId,
    String? messageField,
  }) {
    return ChatAIState(
      loading: loading ?? this.loading,
      listChat: listChat ?? this.listChat,
      roomId: roomId ?? this.roomId,
      messageField: messageField ?? this.messageField,
    );
  }
}
