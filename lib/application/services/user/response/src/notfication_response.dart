import 'package:dart_mappable/dart_mappable.dart';

part 'notfication_response.mapper.dart';

@MappableClass()
class MyNotificationResponse with MyNotificationResponseMappable {
  const MyNotificationResponse({
    this.id,
    this.type,
    this.tutor,
    this.student,
    this.question,
    this.role,
    this.createdAt,
  });

  factory MyNotificationResponse.fromJson(Map<String, dynamic> json) =>
      MyNotificationResponseMapper.fromJson(json);

  final String? id;
  final String? type;
  final UserNotification? tutor;
  final UserNotification? student;
  final QuestionNotfication? question;
  final int? role;
  final DateTime? createdAt;
}

@MappableClass()
class QuestionNotfication with QuestionNotficationMappable {
  const QuestionNotfication({
    this.id,
    this.title,
    this.price,
    this.promoPrice,
  });

  factory QuestionNotfication.fromJson(Map<String, dynamic> json) =>
      QuestionNotficationMapper.fromJson(json);

  final String? id;
  final String? title;
  final String? price;
  final String? promoPrice;
}

@MappableClass()
class UserNotification with UserNotificationMappable {
  const UserNotification({
    this.id,
    this.fullName,
  });

  factory UserNotification.fromJson(Map<String, dynamic> json) =>
      UserNotificationMapper.fromJson(json);

  final String? id;
  final String? fullName;
}
