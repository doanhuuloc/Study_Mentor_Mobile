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
  Future<Result<Failure, BaseResponse<List<LevelResponse>>>>
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

  @override
  Future<Result<Failure, FindTutorResponse>> findTutor(
      {required String questionId}) {
    return handleApiResult(
        future: () => educationDataSource.findTutor(questionId: questionId));
  }

  @override
  Future<Result<Failure, dynamic>> rateQuestion(
      {required String questionId,
      required RateQuestionRequest rateQuestionRequest}) {
    return handleApiResult(
        future: () => educationDataSource.rateQuestion(
            questionId: questionId, rateQuestionRequest: rateQuestionRequest));
  }

  @override
  Future<Result<Failure, BaseResponse<GetQuestionInfoResponse>>>
      getQuestionInfoResponse({required String questionId}) {
    return handleApiResult(
        future: () =>
            educationDataSource.getQuestionInfo(questionId: questionId));
  }
}
