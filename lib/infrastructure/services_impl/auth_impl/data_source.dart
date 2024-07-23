import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../application/services/auth/auth.dart';
import '../../../application/services/common/common.dart';

part 'data_source.g.dart';

@RestApi()
abstract class AuthDataSource {
  factory AuthDataSource(Dio dio, {String baseUrl}) = _AuthDataSource;

  @POST('/api/users/login')
  Future<BaseResponse<AuthenticatedResponse>> login(
      @Body() LoginRequest request);

  @POST('/api/users/refresh-token')
  Future<BaseResponse<AuthenticatedResponse>> refreshToken(
      @Body() RefreshTokenRequest request);

  @POST('/api/users/logout')
  Future<SuccessResponse> logout(@Body() LogoutRequest request);

  @POST('/api/users/register')
  Future<BaseResponse<AuthenticatedResponse>> register(
      @Body() RegisterRequest request);

  @POST("/api/auth/google")
  Future<BaseResponse<AuthenticatedResponse>> loginWithGoogle(
      @Body() LoginWithGoogleRequest loginWithGoogleRequest);
}
