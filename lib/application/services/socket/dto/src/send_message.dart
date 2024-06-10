import 'package:dart_mappable/dart_mappable.dart';

import '../../../file/file.dart';

part 'send_message.mapper.dart';

@MappableClass()
class SendMessage with SendMessageMappable {
  const SendMessage({
    this.senderId,
    this.recipientId,
    this.roomId,
    this.content,
    this.files,
  });

  final String? senderId;
  final String? recipientId;
  final String? roomId;
  final String? content;
  final List<FileRequest>? files;
}
