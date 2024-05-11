import 'package:dart_mappable/dart_mappable.dart';

part 'chat_ai_request.mapper.dart';

@MappableClass()
class ChatAIRequest with ChatAIRequestMappable {
  const ChatAIRequest({
    this.question,
  });

  final String? question;
}
