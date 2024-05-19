import 'package:dart_mappable/dart_mappable.dart';

part 'receive_message.mapper.dart';

@MappableClass()
class ReceiveMessage with ReceiveMessageMappable {
  const ReceiveMessage({
    this.senderId,
    this.recipientId,
    this.roomId,
    this.content,
    this.files,
    this.createdAt,
  });

  final String? senderId;
  final String? recipientId;
  final String? roomId;
  final String? content;
  final String? files;
  final DateTime? createdAt;
}
