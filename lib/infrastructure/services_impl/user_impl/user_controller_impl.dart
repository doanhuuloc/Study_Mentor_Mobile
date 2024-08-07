import 'package:study_mentor_mobile/application/services/file/request/src/file_request.dart';

import '../../../application/services/common/common.dart';
import '../../../application/services/user/user.dart';
import '../../../utilities/failure/failure.dart';
import '../../../utilities/result/src/result.dart';
import '../../data_source_error_handler_mixin.dart';
import 'data_source.dart';

class UserControllerImpl with UserController, DataSourceErrorHandler {
  const UserControllerImpl({
    required this.userDataSource,
  });

  final UserDataSource userDataSource;

  @override
  Future<Result<Failure, BaseResponse<UserInfoResponse>>> getUserInfo() {
    return handleApiResult(future: () => userDataSource.getUserInfo());
  }

  @override
  Future<Result<Failure, BaseResponse<UserInfoResponse>>> updateAvatar(
      {required FileRequest fileRequest}) {
    return handleApiResult(
        future: () => userDataSource.updateAvatar(fileRequest));
  }

  @override
  Future<Result<Failure, BaseResponse<UserInfoResponse>>> updateProfile(
      {required UpdateProfileRequest updateProfileRequest}) {
    return handleApiResult(
        future: () => userDataSource.updateProfile(updateProfileRequest));
  }

  @override
  Future<Result<Failure, SuccessResponse>> changePassword(
      ChangePasswordRequest request) {
    return handleApiResult(
        future: () => userDataSource.changePassword(request));
  }

  @override
  Future<Result<Failure, SuccessResponse>> resetPassword(
      ResetPasswordRequest request) {
    return handleApiResult(future: () => userDataSource.resetPassword(request));
  }

  @override
  Future<Result<Failure, BaseResponse<List<MyNotificationResponse>>>>
      getAllNotifications() {
    return handleApiResult(future: () => userDataSource.getAllNotifications());
  }

  @override
  Future<Result<Failure, BaseResponse<GetBankInfoResponse>>> getBankInfo() {
    return handleApiResult(future: () => userDataSource.getBankInfo());
  }

  @override
  Future<Result<Failure, dynamic>> updateBankInfo(
      UpdateBankInfoRequest updateBankInfoRequest) {
    return handleApiResult(
        future: () => userDataSource.updateBankInfo(updateBankInfoRequest));
  }
}
