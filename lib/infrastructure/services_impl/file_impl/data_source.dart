import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../application/services/common/common.dart';
import '../../../application/services/file/file.dart';

part 'data_source.g.dart';

@RestApi()
abstract class FileDataSource {
  factory FileDataSource(Dio dio, {String baseUrl}) = _FileDataSource;

  @POST('/api/files/signed-url')
  Future<BaseResponse<SignedUrlResponse>> getSignedUrl(
      @Body() SignedUrlRequest signedUrlRequest);
}
