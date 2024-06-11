import 'package:dart_mappable/dart_mappable.dart';
import 'package:study_mentor_mobile/application/services/file/file.dart';

part 'chat_ai_response.mapper.dart';

@MappableClass()
class ChatAIResponse with ChatAIResponseMappable {
  const ChatAIResponse({
    this.recipientId,
    this.createAt,
    this.questionId,
    this.senderId,
    this.content,
    this.files
  });

  factory ChatAIResponse.fromJson(Map<String, dynamic> json) =>
      ChatAIResponseMapper.fromJson(json);

  final String? recipientId;
  final DateTime? createAt;
  final String? questionId;
  final String? senderId;
  final String? content;
  final FileRequest? files;
}
