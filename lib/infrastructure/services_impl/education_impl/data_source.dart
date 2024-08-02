import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:study_mentor_mobile/application/services/education/response/src/get_detailed_roomchat_response.dart';

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
  @GET('/api/questions/{questionId}')
  Future<BaseResponse<GetQuestionInfoResponse>> getQuestionInfo({
    @Path('questionId') required String questionId,
  });

  @POST('/api/users/student/pick-tutor')
  Future<BaseResponse<dynamic>> pickIntrustor(
      @Body() PickIntrustorRequest pickIntrustorRequest);

  @GET('/api/users/student/voucher')
  Future<BaseResponse<List<VoucherReponse>>> getVoucher();

  @POST('/api/questions/calculate-price')
  Future<BaseResponse<CalculatePriceReponse>> calculatePrice(
      @Body() CalculatePriceRequest calculatePriceRequest);

  @GET('/api/users/questions')
  Future<BaseResponse<List<GetQuestionInfoResponse>>> getListQuestion(
      {@Query('status') required String status});

  @PATCH('/api/questions/{questionId}')
  Future<BaseResponse<dynamic>> updateQuestionStatus({
    @Path('questionId') required String questionId,
    @Body() required Map<String, dynamic> updateQuestionStatusRequest,
  });

  @POST('/api/users/create/ggMeet')
  Future<BaseResponse<CreateGGMeetResponse>> createGGMeet(
      @Body() CreateGGMeetRequest createGGMeetRequest);

  @POST('/api/payment/payment-link')
  Future<BaseResponse<PaymentLinkResponse>> payment(
      @Body() PaymentLinkRequest paymentLinkRequest);

  @POST('/api/users/student/report-student')
  Future<BaseResponse<ReportQuestionResponse>> reportTutor(
      @Body() ReportTutorRequest reportTutorRequest);

  @POST('/api/questions/{questionId}/cancel-find-tutor/system')
  Future<BaseResponse<dynamic>> cancelFindSystemQuestion({
    @Path('questionId') required String questionId,
  });

  @GET('/api/users/student/report-student')
  Future<BaseResponse<List<ReportQuestionResponse>>> getListReport();

  @GET('/api/users/student/report-student/{reportId}')
  Future<BaseResponse<ReportQuestionResponse>> getReportQuestion({
    @Path('reportId') required String reportId,
  });

  @POST('/api/users/create/roomChat')
  Future<BaseResponse<CreateQuestionRoomChatResponse>> createRoomChat(
      @Body() CreateQuestionRoomChatRequest createQuestionRoomChatRequest);

  @GET('/api/roomchat/MessageRoom/{roomId}')
  Future<GetDetailedRoomChatReponse> getDetailedRoomChat({
    @Path('roomId') required String roomId,
  });
}
