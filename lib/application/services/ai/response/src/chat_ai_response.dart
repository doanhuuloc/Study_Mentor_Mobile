import 'package:dart_mappable/dart_mappable.dart';

part 'chat_ai_response.mapper.dart';

@MappableClass()
class ChatAIResponse with ChatAIResponseMappable {
  const ChatAIResponse({
    this.contactId,
    this.createAt,
    this.questionId,
    this.senderId,
    this.value,
  });

  factory ChatAIResponse.fromJson(Map<String, dynamic> json) =>
      ChatAIResponseMapper.fromJson(json);

  final String? contactId;
  final DateTime? createAt;
  final String? questionId;
  final String? senderId;
  final String? value;
}
