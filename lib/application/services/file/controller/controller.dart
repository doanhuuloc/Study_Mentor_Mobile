import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';
import '../../common/common.dart';
import '../request/request.dart';
import '../response/src/signed_url_response.dart';

mixin FileController {
  Future<Result<Failure, BaseResponse<SignedUrlResponse>>> getSignedUrl(
      {required SignedUrlRequest signedUrlRequest});

  Future<Result<Failure, dynamic>> uploadFile(
      {required UploadFileRequest uploadFileRequest});
}
