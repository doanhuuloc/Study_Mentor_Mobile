import 'package:dart_mappable/dart_mappable.dart';

part 'send_notification.mapper.dart';

@MappableClass()
class SendNotification with SendNotificationMappable {
  const SendNotification({
    this.userId,
    this.message,
  });

  final String? userId;
  final String? message;
}
