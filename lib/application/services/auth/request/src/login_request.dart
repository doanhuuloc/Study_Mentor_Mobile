import 'package:dart_mappable/dart_mappable.dart';

part 'login_request.mapper.dart';

@MappableClass()
class LoginRequest with LoginRequestMappable {
  const LoginRequest({
    required this.email,
    required this.password,
    this.fcmToken,
  });

  final String email;
  final String password;
  final String? fcmToken;
}
