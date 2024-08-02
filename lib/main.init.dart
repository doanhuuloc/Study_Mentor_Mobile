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
import 'application/services/education/request/src/create_question_roomchat_request.dart'
    as p24;
import 'application/services/education/request/src/get_report_question_request.dart'
    as p25;
import 'application/services/education/request/src/payment_link_request.dart'
    as p26;
import 'application/services/education/request/src/pick_intrustor_request.dart'
    as p27;
import 'application/services/education/request/src/rate_question_request.dart'
    as p28;
import 'application/services/education/request/src/report_tutor_request.dart'
    as p29;
import 'application/services/education/request/src/update_question_status_request.dart'
    as p30;
import 'application/services/education/response/src/calculate_price_response.dart'
    as p31;
import 'application/services/education/response/src/create_ggmeet_response.dart'
    as p32;
import 'application/services/education/response/src/create_question_response.dart'
    as p33;
import 'application/services/education/response/src/create_question_roomchat_response.dart'
    as p34;
import 'application/services/education/response/src/find_tutor_response.dart'
    as p35;
import 'application/services/education/response/src/get_detailed_roomchat_response.dart'
    as p36;
import 'application/services/education/response/src/get_question_info_response.dart'
    as p37;
import 'application/services/education/response/src/get_structure_education_response.dart'
    as p38;
import 'application/services/education/response/src/get_voucher_response.dart'
    as p39;
import 'application/services/education/response/src/payment_link_response.dart'
    as p40;
import 'application/services/education/response/src/report_question_response.dart'
    as p41;
import 'application/services/file/request/src/file_request.dart' as p42;
import 'application/services/file/request/src/signed_url_request.dart' as p43;
import 'application/services/file/request/src/upload_file_request.dart' as p44;
import 'application/services/file/response/src/file_response.dart' as p45;
import 'application/services/file/response/src/signed_url_response.dart' as p46;
import 'application/services/socket/dto/src/create_roomchat.dart' as p47;
import 'application/services/socket/dto/src/emit_get_tutor.dart' as p48;
import 'application/services/socket/dto/src/get_accpet_tutor_info.dart' as p49;
import 'application/services/socket/dto/src/get_answer.dart' as p50;
import 'application/services/socket/dto/src/info_ggmeet.dart' as p51;
import 'application/services/socket/dto/src/notification.dart' as p52;
import 'application/services/socket/dto/src/on_get_tutor.dart' as p53;
import 'application/services/socket/dto/src/payment.dart' as p54;
import 'application/services/socket/dto/src/picked-tutor-accepted-question.dart'
    as p55;
import 'application/services/socket/dto/src/receive_ggmeet.dart' as p56;
import 'application/services/socket/dto/src/receive_message.dart' as p57;
import 'application/services/socket/dto/src/send_message.dart' as p58;
import 'application/services/socket/dto/src/send_notification.dart' as p59;
import 'application/services/user/request/src/change_password_request.dart'
    as p60;
import 'application/services/user/request/src/reset_password_request.dart'
    as p61;
import 'application/services/user/request/src/update_bank_info_request.dart'
    as p62;
import 'application/services/user/request/src/update_profile_request.dart'
    as p63;
import 'application/services/user/response/src/get_bank_info_response.dart'
    as p64;
import 'application/services/user/response/src/notfication_response.dart'
    as p65;
import 'application/services/user/response/src/user_info_response.dart' as p66;
import 'application/services/vietqr/request/src/check_account_bank_request.dart'
    as p67;
import 'application/services/vietqr/response/src/check_account_bank_response.dart'
    as p68;
import 'application/services/vietqr/response/src/get_list_banks_response.dart'
    as p69;

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
  p24.CreateQuestionRoomChatRequestMapper.ensureInitialized();
  p25.GetReportQuestionRequestMapper.ensureInitialized();
  p26.PaymentLinkRequestMapper.ensureInitialized();
  p27.PickIntrustorRequestMapper.ensureInitialized();
  p28.RateQuestionRequestMapper.ensureInitialized();
  p29.ReportTutorRequestMapper.ensureInitialized();
  p30.UpdateQuestionStatusRequestMapper.ensureInitialized();
  p31.CalculatePriceReponseMapper.ensureInitialized();
  p32.CreateGGMeetResponseMapper.ensureInitialized();
  p33.CreateQuestionResponseMapper.ensureInitialized();
  p34.CreateQuestionRoomChatResponseMapper.ensureInitialized();
  p35.FindTutorResponseMapper.ensureInitialized();
  p36.GetDetailedRoomChatReponseMapper.ensureInitialized();
  p37.GetQuestionInfoResponseMapper.ensureInitialized();
  p38.LevelResponseMapper.ensureInitialized();
  p38.GradeResponseMapper.ensureInitialized();
  p38.SubjectResponseMapper.ensureInitialized();
  p39.VoucherReponseMapper.ensureInitialized();
  p40.PaymentLinkResponseMapper.ensureInitialized();
  p41.ReportQuestionResponseMapper.ensureInitialized();
  p42.FileRequestMapper.ensureInitialized();
  p43.SignedUrlRequestMapper.ensureInitialized();
  p44.UploadFileRequestMapper.ensureInitialized();
  p45.FileResponseMapper.ensureInitialized();
  p46.SignedUrlResponseMapper.ensureInitialized();
  p47.CreateRoomChatMapper.ensureInitialized();
  p48.EmitGetTutorMapper.ensureInitialized();
  p49.GetAcceptTutorInfoMapper.ensureInitialized();
  p50.GetAnswerMapper.ensureInitialized();
  p50.DataGetAnswerMapper.ensureInitialized();
  p50.AnswerMapper.ensureInitialized();
  p51.InfoGGMeetMapper.ensureInitialized();
  p52.NotificationMapper.ensureInitialized();
  p53.OnGetTutorMapper.ensureInitialized();
  p53.TutorMapper.ensureInitialized();
  p54.PaymentMapper.ensureInitialized();
  p54.PaymentDetailedMapper.ensureInitialized();
  p55.PickedTutorAcceptedQuestionMapper.ensureInitialized();
  p55.DataPickedTutorAcceptedQuestionMapper.ensureInitialized();
  p56.ReceiveGGMeetMapper.ensureInitialized();
  p57.ReceiveMessageMapper.ensureInitialized();
  p58.SendMessageMapper.ensureInitialized();
  p59.SendNotificationMapper.ensureInitialized();
  p60.ChangePasswordRequestMapper.ensureInitialized();
  p61.ResetPasswordRequestMapper.ensureInitialized();
  p62.UpdateBankInfoRequestMapper.ensureInitialized();
  p63.UpdateProfileRequestMapper.ensureInitialized();
  p63.GenderMapper.ensureInitialized();
  p64.GetBankInfoResponseMapper.ensureInitialized();
  p65.MyNotificationResponseMapper.ensureInitialized();
  p65.QuestionNotficationMapper.ensureInitialized();
  p65.UserNotificationMapper.ensureInitialized();
  p66.UserInfoResponseMapper.ensureInitialized();
  p67.CheckAccountBankRequestMapper.ensureInitialized();
  p68.CheckAccountBankResponseMapper.ensureInitialized();
  p68.AccountNameMapper.ensureInitialized();
  p69.BankMapper.ensureInitialized();
}
