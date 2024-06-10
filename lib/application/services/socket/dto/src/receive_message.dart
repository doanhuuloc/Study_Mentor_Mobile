import 'package:dart_mappable/dart_mappable.dart';

import '../../../file/file.dart';

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

  factory ReceiveMessage.fromJson(Map<String, dynamic> json) =>
      ReceiveMessageMapper.fromJson(json);

  final String? senderId;
  final String? recipientId;
  final String? roomId;
  final String? content;
  final List<FileRequest>? files;
  final DateTime? createdAt;
}
