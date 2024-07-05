import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';
import '../../common/common.dart';
import '../../file/request/request.dart';
import '../user.dart';

mixin UserController {
  Future<Result<Failure, BaseResponse<UserInfoResponse>>> getUserInfo();

  Future<Result<Failure, BaseResponse<UserInfoResponse>>> updateAvatar(
      {required FileRequest fileRequest});

  Future<Result<Failure, BaseResponse<UserInfoResponse>>> updateProfile(
      {required UpdateProfileRequest updateProfileRequest});

  Future<Result<Failure, SuccessResponse>> changePassword(
      ChangePasswordRequest request);
  Future<Result<Failure, SuccessResponse>> resetPassword(
      ResetPasswordRequest request);
}
