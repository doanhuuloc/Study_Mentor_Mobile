import 'package:dart_mappable/dart_mappable.dart';

part 'register_request.mapper.dart';

@MappableClass()
class RegisterRequest with RegisterRequestMappable {
  const RegisterRequest({
    required this.email,
    required this.password,
    required this.fullName,
    required this.gender,
    required this.type,
  });

  final String email;
  final String password;
  final String fullName;
  final int gender;
  final int type;
}
