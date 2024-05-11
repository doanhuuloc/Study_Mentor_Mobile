import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';
import '../../common/common.dart';
import '../../file/request/request.dart';
import '../user.dart';

mixin UserController {
  Future<Result<Failure, BaseResponse>> updateProfile(
      {required UpdateProfileRequest updateProfileRequest});

  Future<Result<Failure, BaseResponse>> updateAvatar(
      {required FileRequest fileRequest});
}
