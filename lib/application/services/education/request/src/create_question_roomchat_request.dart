import 'package:dart_mappable/dart_mappable.dart';

part 'create_question_roomchat_request.mapper.dart';

@MappableClass()
class CreateQuestionRoomChatRequest with CreateQuestionRoomChatRequestMappable {
  const CreateQuestionRoomChatRequest({
    required this.userId,
    required this.tutorId,
    required this.questionId,
  });

  final String userId;
  final String tutorId;
  final String questionId;
}
