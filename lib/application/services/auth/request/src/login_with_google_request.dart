import 'package:dart_mappable/dart_mappable.dart';

part 'login_with_google_request.mapper.dart';

@MappableClass()
class LoginWithGoogleRequest with LoginWithGoogleRequestMappable {
  const LoginWithGoogleRequest({
    this.accessToken,
    this.refreshToken,
    // this.user,
  });

  factory LoginWithGoogleRequest.fromJson(Map<String, dynamic> json) =>
      LoginWithGoogleRequestMapper.fromJson(json);

  final String? accessToken;
  final String? refreshToken;
  // final UserInfoResponse? user;
}
