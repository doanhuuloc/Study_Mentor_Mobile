import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../application/services/common/common.dart';
import '../../../application/services/education/education.dart';

part 'data_source.g.dart';

@RestApi()
abstract class EducationDataSource {
  factory EducationDataSource(Dio dio, {String baseUrl}) = _EducationDataSource;

  @GET('/api/questions/structure-educations')
  Future<BaseResponse<List<LevelResponse>>> getStructureEducation();

  @POST('/api/questions')
  Future<BaseResponse<CreateQuestionResponse>> createQuestion(
      @Body() CreateQuestionRequest createQuestionRequest);

  @POST('/api/questions/{questionId}/rating')
  Future<dynamic> rateQuestion({
    @Path('questionId') required String questionId,
    @Body() required RateQuestionRequest rateQuestionRequest,
  });

  @POST('/api/questions/{questionId}/find-tutor/system')
  Future<FindTutorResponse> findTutor({
    @Path('questionId') required String questionId,
  });
  @POST('/api/questions/{questionId}')
  Future<BaseResponse<GetQuestionInfoResponse>> getQuestionInfo({
    @Path('questionId') required String questionId,
  });
}
