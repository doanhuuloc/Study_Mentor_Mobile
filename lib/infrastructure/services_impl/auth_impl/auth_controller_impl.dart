import '../../../application/services/auth/auth.dart';
import '../../../application/services/common/common.dart';
import '../../../utilities/failure/failure.dart';
import '../../../utilities/result/src/result.dart';
import '../../data_source_error_handler_mixin.dart';
import 'data_source.dart';

class AuthControllerImpl with AuthController, DataSourceErrorHandler {
  const AuthControllerImpl({
    required this.authDataSource,
  });

  final AuthDataSource authDataSource;

  @override
  Future<Result<Failure, BaseResponse<AuthenticatedResponse>>> login(
      LoginRequest request) {
    return handleApiResult(future: () => authDataSource.login(request));
  }

  @override
  Future<Result<Failure, BaseResponse<AuthenticatedResponse>>> refreshToken(
      RefreshTokenRequest request) {
    return handleApiResult(future: () => authDataSource.refreshToken(request));
  }

  @override
  Future<Result<Failure, SuccessResponse>> logout(LogoutRequest request) {
    return handleApiResult(future: () => authDataSource.logout(request));
  }

  // @override
  // Future<Result<Failure, AuthenticatedResponse>> loginWithGoogle(
  //     LoginWithGoogleRequest request) {
  //   return handleApiResult(
  //       future: () => authDataSource.loginWithGoogle(request));
  // }

  @override
  Future<Result<Failure, BaseResponse<AuthenticatedResponse>>> register(
      RegisterRequest request) {
    return handleApiResult(future: () => authDataSource.register(request));
  }

  @override
  Future<Result<Failure, AuthenticatedResponse>> loginWithGoogle(
      LoginWithGoogleRequest request) {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }
}
