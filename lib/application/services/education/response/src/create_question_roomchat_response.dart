import 'package:dart_mappable/dart_mappable.dart';

part 'create_question_roomchat_response.mapper.dart';

@MappableClass()
class CreateQuestionRoomChatResponse
    with CreateQuestionRoomChatResponseMappable {
  const CreateQuestionRoomChatResponse({
    this.roomId,
  });

  factory CreateQuestionRoomChatResponse.fromJson(Map<String, dynamic> json) =>
      CreateQuestionRoomChatResponseMapper.fromJson(json);
  final String? roomId;
}
