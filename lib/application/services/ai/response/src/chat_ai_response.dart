import 'package:dart_mappable/dart_mappable.dart';

part 'chat_ai_response.mapper.dart';

@MappableClass()
class ChatAIResponse with ChatAIResponseMappable {
  const ChatAIResponse({this.response});

  factory ChatAIResponse.fromJson(Map<String, dynamic> json) =>
      ChatAIResponseMapper.fromJson(json);

  final String? response;
}
