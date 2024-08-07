import 'package:study_mentor_mobile/application/services/education/response/src/get_detailed_roomchat_response.dart';

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

  Future<Result<Failure, BaseResponse<dynamic>>> pickIntrustor(
      {required PickIntrustorRequest pickIntrustorRequest});

  Future<Result<Failure, BaseResponse<List<VoucherReponse>>>> getVoucher();

  Future<Result<Failure, BaseResponse<CalculatePriceReponse>>> calculatePrice(
      {required CalculatePriceRequest calculatePriceRequest});

  Future<Result<Failure, BaseResponse<List<GetQuestionInfoResponse>>>>
      getListQuestion({required String status});

  Future<Result<Failure, BaseResponse<dynamic>>> updateQuestionStatus(
      {required UpdateQuestionStatusRequest updateQuestionStatusRequest});

  Future<Result<Failure, BaseResponse<CreateGGMeetResponse>>> createGGMeet(
      {required CreateGGMeetRequest createGGMeetRequest});

  Future<Result<Failure, BaseResponse<PaymentLinkResponse>>> payment(
      {required PaymentLinkRequest paymentLinkRequest});

  Future<Result<Failure, BaseResponse<ReportQuestionResponse>>> reportTutor(
      {required ReportTutorRequest reportTutorRequest});

  Future<Result<Failure, BaseResponse<dynamic>>> cancelFindSystemQuestion(
      {required CancelFindSystemQuestionRequest
          cancelFindSystemQuestionRequest});

  Future<Result<Failure, BaseResponse<List<ReportQuestionResponse>>>>
      getListReport();

  Future<Result<Failure, BaseResponse<ReportQuestionResponse>>>
      getReportQuestion(
          {required GetReportQuestionRequest getReportQuestionRequest});

  Future<Result<Failure, BaseResponse<CreateQuestionRoomChatResponse>>>
      createRoomChat(
          {required CreateQuestionRoomChatRequest
              createQuestionRoomChatRequest});

  Future<Result<Failure, GetDetailedRoomChatReponse>> getDetailedRoomChat(
      {required String roomId});
}
