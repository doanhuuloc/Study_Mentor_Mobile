// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

import 'application/services/auth/dto/src/auth_method.dart' as p0;
import 'application/services/auth/dto/src/otp_info.dart' as p1;
import 'application/services/auth/request/src/change_my_password_request.dart'
    as p2;
import 'application/services/auth/request/src/change_password_request.dart'
    as p3;
import 'application/services/auth/request/src/change_phone_number_request.dart'
    as p4;
import 'application/services/auth/request/src/find_username_request.dart' as p5;
import 'application/services/auth/request/src/login_request.dart' as p6;
import 'application/services/auth/request/src/login_with_apple_request.dart'
    as p7;
import 'application/services/auth/request/src/login_with_google_request.dart'
    as p8;
import 'application/services/auth/request/src/login_with_kakao_request.dart'
    as p9;
import 'application/services/auth/request/src/login_with_naver_request.dart'
    as p10;
import 'application/services/auth/request/src/logout_request.dart' as p11;
import 'application/services/auth/request/src/match_user_phone_number_request.dart'
    as p12;
import 'application/services/auth/request/src/refresh_token_request.dart'
    as p13;
import 'application/services/auth/request/src/register_with_phone_number_request.dart'
    as p14;
import 'application/services/auth/request/src/send_otp_request.dart' as p15;
import 'application/services/auth/request/src/verify_otp_request.dart' as p16;
import 'application/services/auth/request/src/verify_password_request.dart'
    as p17;
import 'application/services/auth/response/src/authenticated_response.dart'
    as p18;
import 'application/services/auth/response/src/find_username_response.dart'
    as p19;
import 'application/services/auth/response/src/jwt_response.dart' as p20;
import 'application/services/auth/response/src/match_user_phone_number_response.dart'
    as p21;
import 'application/services/auth/response/src/send_otp_response.dart' as p22;
import 'application/services/auth/response/src/session_token_response.dart'
    as p23;
import 'application/services/common/dto/src/language_type.dart' as p24;
import 'application/services/common/dto/src/localized_field_value.dart' as p25;
import 'application/services/common/response/src/paging_response.dart' as p26;
import 'application/services/common/response/src/success_response.dart' as p27;
import 'application/services/file/response/src/file_response.dart' as p28;
import 'application/services/file/response/src/presigned_url_upload_response.dart'
    as p29;
import 'application/services/user/dto/src/notification_type.dart' as p30;
import 'application/services/user/dto/src/social_media_type.dart' as p31;
import 'application/services/user/dto/src/user_dto.dart' as p32;
import 'application/services/user/request/src/check_exist_phone_number_request.dart'
    as p33;
import 'application/services/user/request/src/check_exist_username_request.dart'
    as p34;
import 'application/services/user/request/src/file_request.dart' as p35;
import 'application/services/user/request/src/notification_setting_request.dart'
    as p36;
import 'application/services/user/request/src/profile_url_request.dart' as p37;
import 'application/services/user/request/src/read_notification_request.dart'
    as p38;
import 'application/services/user/request/src/social_media_request.dart' as p39;
import 'application/services/user/request/src/supplement_user_information_request.dart'
    as p40;
import 'application/services/user/request/src/update_user_avatar_request.dart'
    as p41;
import 'application/services/user/request/src/update_user_info_request.dart'
    as p42;
import 'application/services/user/response/src/check_exist_account_response.dart'
    as p43;
import 'application/services/user/response/src/get_referred_user_response.dart'
    as p44;
import 'application/services/user/response/src/notification_response.dart'
    as p45;
import 'application/services/user/response/src/notification_setting_response.dart'
    as p46;
import 'application/services/user/response/src/profile_url_response.dart'
    as p47;
import 'application/services/user/response/src/social_media_response.dart'
    as p48;
import 'application/services/user/response/src/user_registration_status_response.dart'
    as p49;

void initializeMappers() {
  p0.AuthMethodMapper.ensureInitialized();
  p1.OTPInfoMapper.ensureInitialized();
  p2.ChangeMyPasswordRequestMapper.ensureInitialized();
  p3.ChangePasswordRequestMapper.ensureInitialized();
  p4.ChangePhoneNumberRequestMapper.ensureInitialized();
  p5.FindUsernameRequestMapper.ensureInitialized();
  p6.LoginRequestMapper.ensureInitialized();
  p7.LoginWithAppleRequestMapper.ensureInitialized();
  p8.LoginWithGoogleRequestMapper.ensureInitialized();
  p9.LoginWithKakaoRequestMapper.ensureInitialized();
  p10.LoginWithNaverRequestMapper.ensureInitialized();
  p11.LogoutRequestMapper.ensureInitialized();
  p12.MatchUserPhoneNumberRequestMapper.ensureInitialized();
  p13.RefreshTokenRequestMapper.ensureInitialized();
  p14.RegisterWithPhoneNumberRequestMapper.ensureInitialized();
  p15.SendOTPRequestMapper.ensureInitialized();
  p16.VerifyOTPRequestMapper.ensureInitialized();
  p17.VerifyPasswordRequestMapper.ensureInitialized();
  p18.AuthenticatedResponseMapper.ensureInitialized();
  p19.FindUsernameResponseMapper.ensureInitialized();
  p20.JwtResponseMapper.ensureInitialized();
  p21.MatchUserPhoneNumberResponseMapper.ensureInitialized();
  p22.SendOTPResponseMapper.ensureInitialized();
  p23.SessionTokenResponseMapper.ensureInitialized();
  p24.PostLanguageMapper.ensureInitialized();
  p25.LocalizedFieldValueMapper.ensureInitialized();
  p26.PagingResponseMapper.ensureInitialized();
  p27.SuccessResponseMapper.ensureInitialized();
  p28.FileResponseMapper.ensureInitialized();
  p29.PresignedUrlUploadResponseMapper.ensureInitialized();
  p30.NotificationTypeMapper.ensureInitialized();
  p31.SocialMediaTypeMapper.ensureInitialized();
  p32.UserDTOMapper.ensureInitialized();
  p32.UserDetailDTOMapper.ensureInitialized();
  p32.RoleMapper.ensureInitialized();
  p32.AccountTypeMapper.ensureInitialized();
  p33.CheckExistPhoneNumberRequestMapper.ensureInitialized();
  p34.CheckExistUsernameRequestMapper.ensureInitialized();
  p35.FileRequestMapper.ensureInitialized();
  p36.NotificationSettingRequestMapper.ensureInitialized();
  p37.ProfileUrlRequestMapper.ensureInitialized();
  p38.ReadNotificationRequestMapper.ensureInitialized();
  p39.SocialMediaRequestMapper.ensureInitialized();
  p40.SupplementUserInformationRequestMapper.ensureInitialized();
  p41.UpdateUserAvatarRequestMapper.ensureInitialized();
  p42.UpdateUserInfoRequestMapper.ensureInitialized();
  p43.CheckAccountExistedResponseMapper.ensureInitialized();
  p44.GetReferredUserResponseMapper.ensureInitialized();
  p45.NotificationResponseMapper.ensureInitialized();
  p46.NotificationSettingResponseMapper.ensureInitialized();
  p47.ProfileUrlResponseMapper.ensureInitialized();
  p48.SocialMediaResponseMapper.ensureInitialized();
  p49.UserRegistrationStatusResponseMapper.ensureInitialized();
}
