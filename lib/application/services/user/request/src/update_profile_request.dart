import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../utilities/constants/constants.dart';

part 'update_profile_request.mapper.dart';

@MappableEnum(caseStyle: enumCaseStyle)
enum Gender {
  male,
  female,
}

@MappableClass()
class UpdateProfileRequest with UpdateProfileRequestMappable {
  const UpdateProfileRequest(
      {this.fullName, this.email, this.phone, this.dateOfBirth, this.gender});

  final String? fullName;
  final String? email;
  final String? phone;
  final String? dateOfBirth;
  final Gender? gender;
}
