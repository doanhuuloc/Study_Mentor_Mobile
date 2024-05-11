import 'package:dio/dio.dart';

import '../../../application/services/ai/ai.dart';
import '../../../application/services/common/common.dart';
import '../../../utilities/failure/failure.dart';
import '../../../utilities/result/result.dart';
import '../../data_source_error_handler_mixin.dart';
import 'data_source.dart';

class AIControllerImpl with AIController, DataSourceErrorHandler {
  const AIControllerImpl({
    required this.aiDataSource,
    required this.dio,
  });

  final AIDataSource aiDataSource;
  final Dio dio;
  
  @override
  Future<Result<Failure, BaseResponse<ChatAIResponse>>> chatAI({required ChatAIRequest chatAIRequest}) {
    // TODO: implement chatAI
    throw UnimplementedError();
  }

}
