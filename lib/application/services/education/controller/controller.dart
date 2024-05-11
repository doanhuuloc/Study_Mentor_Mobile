import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';
import '../../common/common.dart';
import '../education.dart';

mixin EducationController {
  Future<Result<Failure, BaseResponse<GetStructureEducationResponse>>>
      getStructureEducation();

  Future<Result<Failure, BaseResponse<CreateQuestionResponse>>> createQuestion(
      {required CreateQuestionRequest createQuestionRequest});
}
