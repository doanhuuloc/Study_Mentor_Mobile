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
  Future<Result<Failure, BaseResponse>> updateAvatar(
      {required FileRequest fileRequest}) {
    return handleApiResult(
        future: () => userDataSource.updateAvatar(fileRequest));
  }

  @override
  Future<Result<Failure, BaseResponse>> updateProfile(
      {required UpdateProfileRequest updateProfileRequest}) {
    return handleApiResult(
        future: () => userDataSource.updateProfile(updateProfileRequest));
  }
}
