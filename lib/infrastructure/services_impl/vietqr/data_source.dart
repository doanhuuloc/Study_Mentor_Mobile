import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../application/services/common/common.dart';
import '../../../application/services/vietqr/request/request.dart';
import '../../../application/services/vietqr/response/response.dart';

part 'data_source.g.dart';

@RestApi()
abstract class VietqrDataSource {
  factory VietqrDataSource(Dio dio, {String baseUrl}) = _VietqrDataSource;

  @GET('/v2/banks')
  Future<BaseResponse<List<Bank>>> getListBank();
  @POST('/v2/lookup')
  Future<CheckAccountBankResponse> checkAccountBank(
      @Body() CheckAccountBankRequest checkAccountBankRequest);
}
