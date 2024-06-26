import 'package:dart_mappable/dart_mappable.dart';

part 'reset_password_request.mapper.dart';

@MappableClass()
class ResetPasswordRequest with ResetPasswordRequestMappable {
  const ResetPasswordRequest({
    required this.email,
  });

  final String email;
}
