import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';
import '../../common/common.dart';
import '../education.dart';

mixin EducationController {
  Future<Result<Failure, BaseResponse<List<LevelResponse>>>>
      getStructureEducation();

  Future<Result<Failure, BaseResponse<CreateQuestionResponse>>> createQuestion(
      {required CreateQuestionRequest createQuestionRequest});
  Future<Result<Failure, dynamic>> rateQuestion({
    required String questionId,
    required RateQuestionRequest rateQuestionRequest,
  });
  Future<Result<Failure, FindTutorResponse>> findTutor(
      {required String questionId});
  Future<Result<Failure, BaseResponse<GetQuestionInfoResponse>>>
      getQuestionInfoResponse({required String questionId});
}
