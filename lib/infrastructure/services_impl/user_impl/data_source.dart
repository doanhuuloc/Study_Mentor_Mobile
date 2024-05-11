import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../application/services/common/common.dart';
import '../../../application/services/file/file.dart';
import '../../../application/services/user/user.dart';

part 'data_source.g.dart';

@RestApi()
abstract class UserDataSource {
  factory UserDataSource(Dio dio, {String baseUrl}) = _UserDataSource;

  @PATCH('/api/users/profile')
  Future<BaseResponse> updateProfile(
      @Body() UpdateProfileRequest updateProfileRequest);

  @PATCH('/api/users/profile/avatar')
  Future<BaseResponse> updateAvatar(@Body() FileRequest fileRequest);
}
