import 'package:dart_mappable/dart_mappable.dart';

part 'list_roomchat_response.mapper.dart';

@MappableClass()
class ListRoomChatResponse with ListRoomChatResponseMappable {
  const ListRoomChatResponse({
    this.roomId,
    this.title,
    this.senderId,
    this.recipientId,
    this.createdAt,
  });

  factory ListRoomChatResponse.fromJson(Map<String, dynamic> json) =>
      ListRoomChatResponseMapper.fromJson(json);

  final String? roomId;
  final String? title;
  final String? senderId;
  final String? recipientId;
  final DateTime? createdAt;
}
