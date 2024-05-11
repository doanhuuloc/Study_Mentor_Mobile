import 'package:dart_mappable/dart_mappable.dart';

part 'list_roomchat_response.mapper.dart';

@MappableClass()
class ListRoomChatResponse with ListRoomChatResponseMappable {
  const ListRoomChatResponse({
    this.roomId,
    this.Title,
    this.SenderId,
    this.RecipientId,
    this.createdAt,
  });

  factory ListRoomChatResponse.fromJson(Map<String, dynamic> json) =>
      ListRoomChatResponseMapper.fromJson(json);

  final String? roomId;
  final String? Title;
  final String? SenderId;
  final String? RecipientId;
  final String? createdAt;
}
