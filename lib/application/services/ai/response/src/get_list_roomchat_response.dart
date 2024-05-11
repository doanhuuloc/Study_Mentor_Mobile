import 'package:dart_mappable/dart_mappable.dart';

part 'get_list_roomchat_response.mapper.dart';

@MappableClass()
class GetListRoomChatResponse with GetListRoomChatResponseMappable {
  const GetListRoomChatResponse({
    this.response,
  });

  factory GetListRoomChatResponse.fromJson(Map<String, dynamic> json) =>
      GetListRoomChatResponseMapper.fromJson(json);

  final List<ListRoomChatResponse>? response;
}

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
