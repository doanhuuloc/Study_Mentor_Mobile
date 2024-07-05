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

  @override
  Future<Result<Failure, BaseResponse>> pickIntrustor(
      {required PickIntrustorRequest pickIntrustorRequest}) {
    return handleApiResult(
        future: () => educationDataSource.pickIntrustor(pickIntrustorRequest));
  }

  @override
  Future<Result<Failure, BaseResponse<List<VoucherReponse>>>> getVoucher() {
    return handleApiResult(future: () => educationDataSource.getVoucher());
  }

  @override
  Future<Result<Failure, BaseResponse<CalculatePriceReponse>>> calculatePrice(
      {required CalculatePriceRequest calculatePriceRequest}) {
    return handleApiResult(
        future: () =>
            educationDataSource.calculatePrice(calculatePriceRequest));
  }

  @override
  Future<Result<Failure, BaseResponse<List<GetQuestionInfoResponse>>>>
      getListQuestion({required String status}) {
    return handleApiResult(
        future: () => educationDataSource.getListQuestion(status: status));
  }

  @override
  Future<Result<Failure, BaseResponse<dynamic>>> updateQuestionStatus(
      {required UpdateQuestionStatusRequest updateQuestionStatusRequest}) {
    return handleApiResult(
        future: () => educationDataSource.updateQuestionStatus(
                questionId: updateQuestionStatusRequest.questionId,
                updateQuestionStatusRequest: {
                  "status": updateQuestionStatusRequest.status,
                }));
  }

  @override
  Future<Result<Failure, BaseResponse<CreateGGMeetResponse>>> createGGMeet(
      {required CreateGGMeetRequest createGGMeetRequest}) {
    return handleApiResult(
        future: () => educationDataSource.createGGMeet(createGGMeetRequest));
  }

  @override
  Future<Result<Failure, BaseResponse<PaymentLinkResponse>>> payment(
      {required PaymentLinkRequest paymentLinkRequest}) {
    return handleApiResult(
        future: () => educationDataSource.payment(paymentLinkRequest));
  }

  @override
  Future<Result<Failure, BaseResponse>> reportTutor(
      {required ReportTutorRequest reportTutorRequest}) {
    return handleApiResult(
        future: () => educationDataSource.reportTutor(reportTutorRequest));
  }

  @override
  Future<Result<Failure, BaseResponse>> cancelFindSystemQuestion(
      {required CancelFindSystemQuestionRequest
          cancelFindSystemQuestionRequest}) {
    return handleApiResult(
        future: () => educationDataSource.cancelFindSystemQuestion(
            questionId: cancelFindSystemQuestionRequest.questionId));
  }

  @override
  Future<Result<Failure, BaseResponse<List<ReportQuestionReponse>>>>
      getListReport() {
    return handleApiResult(future: () => educationDataSource.getListReport());
  }

  @override
  Future<Result<Failure, BaseResponse<ReportQuestionReponse>>>
      getReportQuestion(
          {required GetReportQuestionRequest getReportQuestionRequest}) {
    return handleApiResult(
        future: () => educationDataSource.getReportQuestion(
            reportId: getReportQuestionRequest.reportId));
  }
}
