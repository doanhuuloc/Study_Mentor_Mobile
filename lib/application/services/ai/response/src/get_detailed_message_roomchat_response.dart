import 'package:dart_mappable/dart_mappable.dart';

import '../../ai.dart';

part 'get_detailed_message_roomchat_response.mapper.dart';

@MappableClass()
class GetDetailedMessageRoomChatResponse
    with GetDetailedMessageRoomChatResponseMappable {
  const GetDetailedMessageRoomChatResponse({this.response});

  factory GetDetailedMessageRoomChatResponse.fromJson(
          Map<String, dynamic> json) =>
      GetDetailedMessageRoomChatResponseMapper.fromJson(json);

  final List<ChatAIResponse>? response;
}
