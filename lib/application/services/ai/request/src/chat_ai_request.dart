import 'package:dart_mappable/dart_mappable.dart';

import '../../../file/file.dart';

part 'chat_ai_request.mapper.dart';

@MappableClass()
class ChatAIRequest with ChatAIRequestMappable {
  const ChatAIRequest({
    this.questionId,
    this.question,
    this.senderId,
    this.recipientId,
    this.roomId,
    this.file,
  });

  final String? questionId;
  final String? question;
  final String? senderId;
  final String? recipientId;
  final String? roomId;
  final FileRequest? file;
}
