import 'package:dart_mappable/dart_mappable.dart';

part 'create_roomchat_request.mapper.dart';

@MappableClass()
class CreateRoomChatRequest with CreateRoomChatRequestMappable {
  const CreateRoomChatRequest({
    this.Title,
  });

  final String? Title;
}
