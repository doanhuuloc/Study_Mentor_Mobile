import 'package:dio/dio.dart';

import '../../../application/services/common/common.dart';
import '../../../application/services/education/Education.dart';
import '../../../utilities/failure/failure.dart';
import '../../../utilities/result/result.dart';
import '../../data_source_error_handler_mixin.dart';
import 'data_source.dart';

class EducationControllerImpl with EducationController, DataSourceErrorHandler {
  const EducationControllerImpl({
    required this.educationDataSource,
  });

  final EducationDataSource educationDataSource;

  @override
  Future<Result<Failure, BaseResponse<GetStructureEducationResponse>>>
      getStructureEducation() {
    return handleApiResult(
        future: () => educationDataSource.getStructureEducation());
  }

  @override
  Future<Result<Failure, BaseResponse<CreateQuestionResponse>>> createQuestion(
      {required CreateQuestionRequest createQuestionRequest}) {
    return handleApiResult(
        future: () =>
            educationDataSource.createQuestion(createQuestionRequest));
  }
}
