import 'package:dart_mappable/dart_mappable.dart';

part 'authenticated_response.mapper.dart';

@MappableClass()
class AuthenticatedResponse with AuthenticatedResponseMappable {
  const AuthenticatedResponse({
    this.accessToken,
    this.refreshToken,
    // this.user,
  });

  factory AuthenticatedResponse.fromJson(Map<String, dynamic> json) =>
      AuthenticatedResponseMapper.fromJson(json);

  final String? accessToken;
  final String? refreshToken;
  // final UserInfoResponse? user;
}
