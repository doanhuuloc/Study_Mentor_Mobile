import 'package:dart_mappable/dart_mappable.dart';

part 'login_request.mapper.dart';

@MappableClass()
class LoginRequest with LoginRequestMappable {
  const LoginRequest({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
}
