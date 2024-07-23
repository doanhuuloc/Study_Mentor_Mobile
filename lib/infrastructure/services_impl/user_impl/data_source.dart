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

  @GET('/api/users/profile')
  Future<BaseResponse<UserInfoResponse>> getUserInfo();

  @PATCH('/api/users/profile')
  Future<BaseResponse<UserInfoResponse>> updateProfile(
      @Body() UpdateProfileRequest updateProfileRequest);

  @PATCH('/api/users/profile/avatar')
  Future<BaseResponse<UserInfoResponse>> updateAvatar(
      @Body() FileRequest fileRequest);

  @PUT('/api/users/password/change-password')
  Future<SuccessResponse> changePassword(@Body() ChangePasswordRequest request);

  @PUT('/api/users/password/reset-password')
  Future<SuccessResponse> resetPassword(@Body() ResetPasswordRequest request);

  @GET('/api/notifications')
  Future<BaseResponse<List<MyNotificationResponse>>> getAllNotifications();
}
