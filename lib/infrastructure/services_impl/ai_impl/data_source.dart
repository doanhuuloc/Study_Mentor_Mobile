import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../application/services/common/common.dart';

part 'data_source.g.dart';

@RestApi()
abstract class AIDataSource {
  factory AIDataSource(Dio dio, {String baseUrl}) = _AIDataSource;

  // @POST('')
}
