import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../utilities/constants/constants.dart';

part 'chat_ai_request.mapper.dart';

@MappableEnum(caseStyle: enumCaseStyle)
enum ModelAI {
  pay,
  gemini,
  chatgpt,
}

@MappableClass()
class ChatAIRequest with ChatAIRequestMappable {
  const ChatAIRequest({
    this.question,
    this.modelAI,
    this.userId,
    this.roomId,
  });

  final String? question;
  final ModelAI? modelAI;
  final String? userId;
  final String? roomId;
}
