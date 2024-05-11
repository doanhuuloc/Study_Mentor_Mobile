import 'package:dio/dio.dart';
import 'package:mime/mime.dart';
import 'package:study_mentor_mobile/application/services/file/request/src/signed_url_request.dart';
import 'package:study_mentor_mobile/application/services/file/request/src/upload_file_request.dart';

import '../../../application/failures/generic/generic_failure.dart';
import '../../../application/services/common/common.dart';
import '../../../application/services/file/file.dart';
import '../../../utilities/failure/failure.dart';
import '../../../utilities/result/result.dart';
import '../../data_source_error_handler_mixin.dart';
import 'data_source.dart';

class FileControllerImpl with FileController, DataSourceErrorHandler {
  const FileControllerImpl({
    required this.fileDataSource,
    required this.dio,
  });

  final FileDataSource fileDataSource;
  final Dio dio;

  @override
  Future<Result<Failure, BaseResponse<SignedUrlResponse>>> getSignedUrl(
      {required SignedUrlRequest signedUrlRequest}) {
    return handleApiResult(
        future: () => fileDataSource.getSignedUrl(signedUrlRequest));
  }

  @override
  Future<Result<Failure, dynamic>> uploadFile(
      {required UploadFileRequest uploadFileRequest}) async {
    try {
      final mimeType = lookupMimeType(uploadFileRequest.file.path) ??
          'application/octet-stream';

      await dio.put(
        uploadFileRequest.signedUrl,
        data: uploadFileRequest.file.openRead(),
        options: Options(
          contentType: mimeType,
          headers: {
            'Content-Length': uploadFileRequest.file.lengthSync(),
          },
        ),
      );
      await Future.delayed(const Duration(milliseconds: 100));
      return const Right(null);
    } catch (error) {
      return const Left(GenericFailure());
    }
  }
}
