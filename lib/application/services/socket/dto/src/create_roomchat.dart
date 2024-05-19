import 'package:dart_mappable/dart_mappable.dart';

part 'create_roomchat.mapper.dart';

@MappableClass()
class CreateRoomChat with CreateRoomChatMappable {
  const CreateRoomChat({
    this.userId,
    this.turtorId,
    this.questionId,
  });

  final String? userId;
  final String? turtorId;
  final String? questionId;
}
