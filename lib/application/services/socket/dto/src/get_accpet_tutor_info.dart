import 'package:dart_mappable/dart_mappable.dart';

import '../../../user/user.dart';

part 'get_accpet_tutor_info.mapper.dart';

@MappableClass()
class GetAcceptTutorInfo with GetAcceptTutorInfoMappable {
  const GetAcceptTutorInfo({this.data});

  factory GetAcceptTutorInfo.fromJson(Map<String, dynamic> json) =>
      GetAcceptTutorInfoMapper.fromJson(json);
  final UserInfoResponse? data;
}
