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
import 'application/services/auth/request/src/change_my_password_request.dart'
    as p7;
import 'application/services/auth/request/src/change_password_request.dart'
    as p8;
import 'application/services/auth/request/src/login_request.dart' as p9;
import 'application/services/auth/request/src/logout_request.dart' as p10;
import 'application/services/auth/request/src/refresh_token_request.dart'
    as p11;
import 'application/services/auth/response/src/authenticated_response.dart'
    as p12;
import 'application/services/auth/response/src/session_token_response.dart'
    as p13;
import 'application/services/common/dto/src/language_type.dart' as p14;
import 'application/services/common/dto/src/localized_field_value.dart' as p15;
import 'application/services/common/response/src/base_response.dart' as p16;
import 'application/services/common/response/src/success_response.dart' as p17;
import 'application/services/education/dto/enum.dart' as p18;
import 'application/services/education/request/src/calculate_price_request.dart'
    as p19;
import 'application/services/education/request/src/create_ggmeet_request.dart'
    as p20;
import 'application/services/education/request/src/create_question_request.dart'
    as p21;
import 'application/services/education/request/src/pick_intrustor_request.dart'
    as p22;
import 'application/services/education/request/src/rate_question_request.dart'
    as p23;
import 'application/services/education/request/src/update_question_status_request.dart'
    as p24;
import 'application/services/education/response/src/calculate_price_response.dart'
    as p25;
import 'application/services/education/response/src/create_ggmeet_response.dart'
    as p26;
import 'application/services/education/response/src/create_question_response.dart'
    as p27;
import 'application/services/education/response/src/find_tutor_response.dart'
    as p28;
import 'application/services/education/response/src/get_question_info_response.dart'
    as p29;
import 'application/services/education/response/src/get_structure_education_response.dart'
    as p30;
import 'application/services/education/response/src/get_voucher_response.dart'
    as p31;
import 'application/services/file/request/src/file_request.dart' as p32;
import 'application/services/file/request/src/signed_url_request.dart' as p33;
import 'application/services/file/request/src/upload_file_request.dart' as p34;
import 'application/services/file/response/src/file_response.dart' as p35;
import 'application/services/file/response/src/signed_url_response.dart' as p36;
import 'application/services/socket/dto/src/create_roomchat.dart' as p37;
import 'application/services/socket/dto/src/emit_get_tutor.dart' as p38;
import 'application/services/socket/dto/src/get_accpet_tutor_info.dart' as p39;
import 'application/services/socket/dto/src/get_answer.dart' as p40;
import 'application/services/socket/dto/src/notification.dart' as p41;
import 'application/services/socket/dto/src/on_get_tutor.dart' as p42;
import 'application/services/socket/dto/src/picked-tutor-accepted-question.dart'
    as p43;
import 'application/services/socket/dto/src/receive_message.dart' as p44;
import 'application/services/socket/dto/src/send_message.dart' as p45;
import 'application/services/socket/dto/src/send_notification.dart' as p46;
import 'application/services/user/request/src/update_profile_request.dart'
    as p47;
import 'application/services/user/response/src/user_info_response.dart' as p48;

void initializeMappers() {
  p0.ChatAIRequestMapper.ensureInitialized();
  p1.CreateRoomChatRequestMapper.ensureInitialized();
  p2.ChatAIResponseMapper.ensureInitialized();
  p3.CreateRoomChatResponseMapper.ensureInitialized();
  p4.ListRoomChatResponseMapper.ensureInitialized();
  p5.AuthMethodMapper.ensureInitialized();
  p6.OTPInfoMapper.ensureInitialized();
  p7.ChangeMyPasswordRequestMapper.ensureInitialized();
  p8.ChangePasswordRequestMapper.ensureInitialized();
  p9.LoginRequestMapper.ensureInitialized();
  p10.LogoutRequestMapper.ensureInitialized();
  p11.RefreshTokenRequestMapper.ensureInitialized();
  p12.AuthenticatedResponseMapper.ensureInitialized();
  p13.SessionTokenResponseMapper.ensureInitialized();
  p14.PostLanguageMapper.ensureInitialized();
  p15.LocalizedFieldValueMapper.ensureInitialized();
  p16.BaseResponseMapper.ensureInitialized();
  p17.SuccessResponseMapper.ensureInitialized();
  p18.QuestionStatusMapper.ensureInitialized();
  p18.QuestionTypeMapper.ensureInitialized();
  p19.CalculatePriceRequestMapper.ensureInitialized();
  p20.CreateGGMeetRequestMapper.ensureInitialized();
  p21.CreateQuestionRequestMapper.ensureInitialized();
  p22.PickIntrustorRequestMapper.ensureInitialized();
  p23.RateQuestionRequestMapper.ensureInitialized();
  p24.UpdateQuestionStatusRequestMapper.ensureInitialized();
  p25.CalculatePriceReponseMapper.ensureInitialized();
  p26.CreateGGMeetResponseMapper.ensureInitialized();
  p27.CreateQuestionResponseMapper.ensureInitialized();
  p28.FindTutorResponseMapper.ensureInitialized();
  p29.GetQuestionInfoResponseMapper.ensureInitialized();
  p30.LevelResponseMapper.ensureInitialized();
  p30.GradeResponseMapper.ensureInitialized();
  p30.SubjectResponseMapper.ensureInitialized();
  p31.VoucherReponseMapper.ensureInitialized();
  p32.FileRequestMapper.ensureInitialized();
  p33.SignedUrlRequestMapper.ensureInitialized();
  p34.UploadFileRequestMapper.ensureInitialized();
  p35.FileResponseMapper.ensureInitialized();
  p36.SignedUrlResponseMapper.ensureInitialized();
  p37.CreateRoomChatMapper.ensureInitialized();
  p38.EmitGetTutorMapper.ensureInitialized();
  p39.GetAcceptTutorInfoMapper.ensureInitialized();
  p40.GetAnswerMapper.ensureInitialized();
  p40.DataGetAnswerMapper.ensureInitialized();
  p40.AnswerMapper.ensureInitialized();
  p41.NotificationMapper.ensureInitialized();
  p42.OnGetTutorMapper.ensureInitialized();
  p42.TutorMapper.ensureInitialized();
  p43.PickedTutorAcceptedQuestionMapper.ensureInitialized();
  p43.DataPickedTutorAcceptedQuestionMapper.ensureInitialized();
  p44.ReceiveMessageMapper.ensureInitialized();
  p45.SendMessageMapper.ensureInitialized();
  p46.SendNotificationMapper.ensureInitialized();
  p47.UpdateProfileRequestMapper.ensureInitialized();
  p47.GenderMapper.ensureInitialized();
  p48.UserInfoResponseMapper.ensureInitialized();
}
