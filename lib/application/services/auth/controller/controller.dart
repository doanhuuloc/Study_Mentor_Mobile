import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';
import '../../common/common.dart';
import '../auth.dart';

mixin AuthController {
  Future<Result<Failure, BaseResponse<AuthenticatedResponse>>> login(
      LoginRequest request);
  Future<Result<Failure, BaseResponse<AuthenticatedResponse>>> register(
      RegisterRequest request);
  Future<Result<Failure, BaseResponse<AuthenticatedResponse>>> refreshToken(
      RefreshTokenRequest request);
  Future<Result<Failure, SuccessResponse>> logout(LogoutRequest request);
  Future<Result<Failure, AuthenticatedResponse>> loginWithGoogle(
      LoginWithGoogleRequest request);
}
