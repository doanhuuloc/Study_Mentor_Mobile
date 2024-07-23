import 'package:dart_mappable/dart_mappable.dart';

part 'login_with_google_request.mapper.dart';

@MappableClass()
class LoginWithGoogleRequest with LoginWithGoogleRequestMappable {
  const LoginWithGoogleRequest({
    this.email,
    this.fullName,
    this.fcmToken,
    // this.user,
  });

  factory LoginWithGoogleRequest.fromJson(Map<String, dynamic> json) =>
      LoginWithGoogleRequestMapper.fromJson(json);

  final String? email;
  final String? fullName;
  final String? fcmToken;
  // final UserInfoResponse? user;
}
