// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

import 'application/services/ai/request/src/chat_ai_request.dart' as p0;
import 'application/services/ai/request/src/create_roomchat_request.dart' as p1;
import 'application/services/ai/response/src/chat_ai_response.dart' as p2;
import 'application/services/ai/response/src/create_roomchat_response.dart'
    as p3;
import 'application/services/ai/response/src/list_roomchat_response.dart' as p4;
import 'application/services/auth/dto/src/auth_method.dart' as p5;
import 'application/services/auth/dto/src/otp_info.dart' as p6;
import 'application/services/auth/request/src/login_request.dart' as p7;
import 'application/services/auth/request/src/login_with_google_request.dart'
    as p8;
import 'application/services/auth/request/src/logout_request.dart' as p9;
import 'application/services/auth/request/src/refresh_token_request.dart'
    as p10;
import 'application/services/auth/request/src/register_request.dart' as p11;
import 'application/services/auth/response/src/authenticated_response.dart'
    as p12;
import 'application/services/auth/response/src/session_token_response.dart'
    as p13;
import 'application/services/common/dto/src/language_type.dart' as p14;
import 'application/services/common/dto/src/localized_field_value.dart' as p15;
import 'application/services/common/response/src/base_response.dart' as p16;
import 'application/services/common/response/src/pagination_response.dart'
    as p17;
import 'application/services/common/response/src/success_response.dart' as p18;
import 'application/services/education/dto/enum.dart' as p19;
import 'application/services/education/request/src/calculate_price_request.dart'
    as p20;
import 'application/services/education/request/src/canel_find_system_question_request.dart'
    as p21;
import 'application/services/education/request/src/create_ggmeet_request.dart'
    as p22;
import 'application/services/education/request/src/create_question_request.dart'
    as p23;
import 'application/services/education/request/src/get_report_question_request.dart'
    as p24;
import 'application/services/education/request/src/payment_link_request.dart'
    as p25;
import 'application/services/education/request/src/pick_intrustor_request.dart'
    as p26;
import 'application/services/education/request/src/rate_question_request.dart'
    as p27;
import 'application/services/education/request/src/report_tutor_request.dart'
    as p28;
import 'application/services/education/request/src/update_question_status_request.dart'
    as p29;
import 'application/services/education/response/src/calculate_price_response.dart'
    as p30;
import 'application/services/education/response/src/create_ggmeet_response.dart'
    as p31;
import 'application/services/education/response/src/create_question_response.dart'
    as p32;
import 'application/services/education/response/src/find_tutor_response.dart'
    as p33;
import 'application/services/education/response/src/get_question_info_response.dart'
    as p34;
import 'application/services/education/response/src/get_structure_education_response.dart'
    as p35;
import 'application/services/education/response/src/get_voucher_response.dart'
    as p36;
import 'application/services/education/response/src/payment_link_response.dart'
    as p37;
import 'application/services/education/response/src/report_question_response.dart'
    as p38;
import 'application/services/file/request/src/file_request.dart' as p39;
import 'application/services/file/request/src/signed_url_request.dart' as p40;
import 'application/services/file/request/src/upload_file_request.dart' as p41;
import 'application/services/file/response/src/file_response.dart' as p42;
import 'application/services/file/response/src/signed_url_response.dart' as p43;
import 'application/services/socket/dto/src/create_roomchat.dart' as p44;
import 'application/services/socket/dto/src/emit_get_tutor.dart' as p45;
import 'application/services/socket/dto/src/get_accpet_tutor_info.dart' as p46;
import 'application/services/socket/dto/src/get_answer.dart' as p47;
import 'application/services/socket/dto/src/notification.dart' as p48;
import 'application/services/socket/dto/src/on_get_tutor.dart' as p49;
import 'application/services/socket/dto/src/picked-tutor-accepted-question.dart'
    as p50;
import 'application/services/socket/dto/src/receive_message.dart' as p51;
import 'application/services/socket/dto/src/send_message.dart' as p52;
import 'application/services/socket/dto/src/send_notification.dart' as p53;
import 'application/services/user/request/src/change_password_request.dart'
    as p54;
import 'application/services/user/request/src/reset_password_request.dart'
    as p55;
import 'application/services/user/request/src/update_profile_request.dart'
    as p56;
import 'application/services/user/response/src/user_info_response.dart' as p57;

void initializeMappers() {
  p0.ChatAIRequestMapper.ensureInitialized();
  p1.CreateRoomChatRequestMapper.ensureInitialized();
  p2.ChatAIResponseMapper.ensureInitialized();
  p3.CreateRoomChatResponseMapper.ensureInitialized();
  p4.ListRoomChatResponseMapper.ensureInitialized();
  p5.AuthMethodMapper.ensureInitialized();
  p6.OTPInfoMapper.ensureInitialized();
  p7.LoginRequestMapper.ensureInitialized();
  p8.LoginWithGoogleRequestMapper.ensureInitialized();
  p9.LogoutRequestMapper.ensureInitialized();
  p10.RefreshTokenRequestMapper.ensureInitialized();
  p11.RegisterRequestMapper.ensureInitialized();
  p12.AuthenticatedResponseMapper.ensureInitialized();
  p13.SessionTokenResponseMapper.ensureInitialized();
  p14.PostLanguageMapper.ensureInitialized();
  p15.LocalizedFieldValueMapper.ensureInitialized();
  p16.BaseResponseMapper.ensureInitialized();
  p17.PaginationResponseMapper.ensureInitialized();
  p18.SuccessResponseMapper.ensureInitialized();
  p19.QuestionStatusMapper.ensureInitialized();
  p19.QuestionTypeMapper.ensureInitialized();
  p19.ExpirationDateTypeMapper.ensureInitialized();
  p20.CalculatePriceRequestMapper.ensureInitialized();
  p21.CancelFindSystemQuestionRequestMapper.ensureInitialized();
  p22.CreateGGMeetRequestMapper.ensureInitialized();
  p23.CreateQuestionRequestMapper.ensureInitialized();
  p24.GetReportQuestionRequestMapper.ensureInitialized();
  p25.PaymentLinkRequestMapper.ensureInitialized();
  p26.PickIntrustorRequestMapper.ensureInitialized();
  p27.RateQuestionRequestMapper.ensureInitialized();
  p28.ReportTutorRequestMapper.ensureInitialized();
  p29.UpdateQuestionStatusRequestMapper.ensureInitialized();
  p30.CalculatePriceReponseMapper.ensureInitialized();
  p31.CreateGGMeetResponseMapper.ensureInitialized();
  p32.CreateQuestionResponseMapper.ensureInitialized();
  p33.FindTutorResponseMapper.ensureInitialized();
  p34.GetQuestionInfoResponseMapper.ensureInitialized();
  p35.LevelResponseMapper.ensureInitialized();
  p35.GradeResponseMapper.ensureInitialized();
  p35.SubjectResponseMapper.ensureInitialized();
  p36.VoucherReponseMapper.ensureInitialized();
  p37.PaymentLinkResponseMapper.ensureInitialized();
  p38.ReportQuestionReponseMapper.ensureInitialized();
  p39.FileRequestMapper.ensureInitialized();
  p40.SignedUrlRequestMapper.ensureInitialized();
  p41.UploadFileRequestMapper.ensureInitialized();
  p42.FileResponseMapper.ensureInitialized();
  p43.SignedUrlResponseMapper.ensureInitialized();
  p44.CreateRoomChatMapper.ensureInitialized();
  p45.EmitGetTutorMapper.ensureInitialized();
  p46.GetAcceptTutorInfoMapper.ensureInitialized();
  p47.GetAnswerMapper.ensureInitialized();
  p47.DataGetAnswerMapper.ensureInitialized();
  p47.AnswerMapper.ensureInitialized();
  p48.NotificationMapper.ensureInitialized();
  p49.OnGetTutorMapper.ensureInitialized();
  p49.TutorMapper.ensureInitialized();
  p50.PickedTutorAcceptedQuestionMapper.ensureInitialized();
  p50.DataPickedTutorAcceptedQuestionMapper.ensureInitialized();
  p51.ReceiveMessageMapper.ensureInitialized();
  p52.SendMessageMapper.ensureInitialized();
  p53.SendNotificationMapper.ensureInitialized();
  p54.ChangePasswordRequestMapper.ensureInitialized();
  p55.ResetPasswordRequestMapper.ensureInitialized();
  p56.UpdateProfileRequestMapper.ensureInitialized();
  p56.GenderMapper.ensureInitialized();
  p57.UserInfoResponseMapper.ensureInitialized();
}
