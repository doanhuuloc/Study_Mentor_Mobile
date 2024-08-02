import 'package:dart_mappable/dart_mappable.dart';
import 'package:study_mentor_mobile/application/services/socket/dto/src/receive_message.dart';
part 'get_detailed_roomchat_response.mapper.dart';

@MappableClass()
class GetDetailedRoomChatReponse with GetDetailedRoomChatReponseMappable {
  const GetDetailedRoomChatReponse({
    this.listMessage,
  });

  factory GetDetailedRoomChatReponse.fromJson(Map<String, dynamic> json) =>
      GetDetailedRoomChatReponseMapper.fromJson(json);

  final List<ReceiveMessage>? listMessage;
}
