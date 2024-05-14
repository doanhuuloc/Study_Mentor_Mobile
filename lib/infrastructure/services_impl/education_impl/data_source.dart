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
}
