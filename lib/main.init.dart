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
import 'application/services/education/request/src/create_question_request.dart'
    as p18;
import 'application/services/education/request/src/rate_question_request.dart'
    as p19;
import 'application/services/education/response/src/create_question_response.dart'
    as p20;
import 'application/services/education/response/src/find_tutor_response.dart'
    as p21;
import 'application/services/education/response/src/get_question_info_response.dart'
    as p22;
import 'application/services/education/response/src/get_structure_education_response.dart'
    as p23;
import 'application/services/file/request/src/file_request.dart' as p24;
import 'application/services/file/request/src/signed_url_request.dart' as p25;
import 'application/services/file/request/src/upload_file_request.dart' as p26;
import 'application/services/file/response/src/file_response.dart' as p27;
import 'application/services/file/response/src/signed_url_response.dart' as p28;
import 'application/services/socket/dto/src/create_roomchat.dart' as p29;
import 'application/services/socket/dto/src/emit_get_tutor.dart' as p30;
import 'application/services/socket/dto/src/notification.dart' as p31;
import 'application/services/socket/dto/src/on_get_tutor.dart' as p32;
import 'application/services/socket/dto/src/receive_message.dart' as p33;
import 'application/services/socket/dto/src/send_message.dart' as p34;
import 'application/services/socket/dto/src/send_notification.dart' as p35;
import 'application/services/user/request/src/update_profile_request.dart'
    as p36;
import 'application/services/user/response/src/user_info_response.dart' as p37;

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
  p18.CreateQuestionRequestMapper.ensureInitialized();
  p19.RateQuestionRequestMapper.ensureInitialized();
  p20.CreateQuestionResponseMapper.ensureInitialized();
  p21.FindTutorResponseMapper.ensureInitialized();
  p22.GetQuestionInfoResponseMapper.ensureInitialized();
  p23.LevelResponseMapper.ensureInitialized();
  p23.GradeResponseMapper.ensureInitialized();
  p23.SubjectResponseMapper.ensureInitialized();
  p24.FileRequestMapper.ensureInitialized();
  p25.SignedUrlRequestMapper.ensureInitialized();
  p26.UploadFileRequestMapper.ensureInitialized();
  p27.FileResponseMapper.ensureInitialized();
  p28.SignedUrlResponseMapper.ensureInitialized();
  p29.CreateRoomChatMapper.ensureInitialized();
  p30.EmitGetTutorMapper.ensureInitialized();
  p31.NotificationMapper.ensureInitialized();
  p32.OnGetTutorMapper.ensureInitialized();
  p32.TutorMapper.ensureInitialized();
  p33.ReceiveMessageMapper.ensureInitialized();
  p34.SendMessageMapper.ensureInitialized();
  p35.SendNotificationMapper.ensureInitialized();
  p36.UpdateProfileRequestMapper.ensureInitialized();
  p36.GenderMapper.ensureInitialized();
  p37.UserInfoResponseMapper.ensureInitialized();
}
