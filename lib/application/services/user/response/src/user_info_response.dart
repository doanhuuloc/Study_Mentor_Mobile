import 'package:dart_mappable/dart_mappable.dart';

import '../../../file/file.dart';

part 'user_info_response.mapper.dart';

@MappableClass()
class UserInfoResponse with UserInfoResponseMappable {
  const UserInfoResponse({
    this.id,
    this.fullName,
    this.email,
    this.role,
    this.phone,
    this.dateOfBirth,
    this.averageRate,
    this.avatar,
    this.gender,
    this.status,
  });

  factory UserInfoResponse.fromJson(Map<String, dynamic> json) =>
      UserInfoResponseMapper.fromJson(json);

  final String? id;
  final String? fullName;
  final String? email;
  final int? role;
  final String? phone;
  final int? dateOfBirth;
  final int? gender;
  final int? status;
  final double? averageRate;
  final FileRequest? avatar;
}
