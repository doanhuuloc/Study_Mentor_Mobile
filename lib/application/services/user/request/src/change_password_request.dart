import 'package:dart_mappable/dart_mappable.dart';

part 'change_password_request.mapper.dart';

@MappableClass()
class ChangePasswordRequest with ChangePasswordRequestMappable {
  const ChangePasswordRequest({
    required this.passwordOld,
    required this.passwordNew,
  });

  final String passwordOld;
  final String passwordNew;
}
