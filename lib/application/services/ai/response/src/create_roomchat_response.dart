import 'package:dart_mappable/dart_mappable.dart';

part 'create_roomchat_response.mapper.dart';

@MappableClass()
class CreateRoomChatResponse with CreateRoomChatResponseMappable {
  const CreateRoomChatResponse({this.RoomId});

  factory CreateRoomChatResponse.fromJson(Map<String, dynamic> json) =>
      CreateRoomChatResponseMapper.fromJson(json);

  final String? RoomId;
}
