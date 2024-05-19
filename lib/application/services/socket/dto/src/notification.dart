import 'package:dart_mappable/dart_mappable.dart';

part 'notification.mapper.dart';

@MappableClass()
class Notification with NotificationMappable {
  const Notification({
    this.message,
  });

  final String? message;
}
