import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../application/services/auth/auth.dart';
import '../../../application/services/common/common.dart';

part 'data_source.g.dart';

@RestApi()
abstract class AuthDataSource {
  factory AuthDataSource(Dio dio, {String baseUrl}) = _AuthDataSource;

  @POST('/api/users/login')
  Future<AuthenticatedResponse> login(@Body() LoginRequest request);

  @POST('/v1/auth/refresh-token')
  Future<AuthenticatedResponse> refreshToken(
      @Body() RefreshTokenRequest request);

  @DELETE('/v1/auth/logout')
  Future<SuccessResponse> logout(@Body() LogoutRequest request);

  @POST('/v1/auth/change-password')
  Future<SuccessResponse> changePassword(@Body() ChangePasswordRequest request);

  @POST('/v1/auth/change-my-password')
  Future<SuccessResponse> changeMyPassword(
      @Body() ChangeMyPasswordRequest request);
}
