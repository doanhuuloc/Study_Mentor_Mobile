import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:study_mentor_mobile/application/services/user/response/response.dart';
// import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../../../application/services/app/token_service/refresh_token_manager.dart';
import '../../../application/services/app/token_service/token_service.dart';
import '../../../application/services/auth/auth.dart';
import '../../../application/services/user/controller/controller.dart';
import '../../../utilities/failure/failure.dart';
import '../bloc_utils/safe_cubit/safe_cubit.dart';
import '../session_cubit/session_cubit.dart';
import '../user_cubit/user_cubit.dart';

part 'auth_state.dart';

class AuthCubit extends SafeCubit<AuthStatusState> {
  AuthCubit({
    required this.sessionCubit,
    required this.userCubit,
    required this.authController,
    required this.userController,
    required this.tokenService,
    required this.refreshTokenManager,
  }) : super(
          const AuthStatusLoggedOutState(logoutReason: LogoutReason.killApp),
        ) {
    _sessionSubs = sessionCubit.stream.listen((event) {
      if (event.status == SessionStatus.expired) {
        _logoutWithReason(LogoutReason.sessionExpired);
      }
    });
  }

  StreamSubscription<SessionState>? _sessionSubs;
  final AuthController authController;
  final UserController userController;
  final UserCubit userCubit;
  final SessionCubit sessionCubit;
  final TokenService tokenService;
  final RefreshTokenManager refreshTokenManager;

  void _loggedInSuccess({
    String? redirectUrl,
    // required UserInfoResponse? user,
  }) async {
    sessionCubit.sessionStarted();
    // final userInfoResult = await userController.getUserRegistrationStatus();
    // userInfoResult.handleRight((value) {
    //   isUserReady = value.registrationCompleted ?? true;
    // });

    emit(AuthStatusLoggedInState(
      redirectUrl: redirectUrl,
      userNeedVerify: false,
    ));
  }

  Future<Failure?> loginWithUserInfo({
    required String email,
    required String password,
    String? redirectUrl,
  }) async {
    final loginResponse = await authController.login(
      LoginRequest(
        email: email,
        password: password,
      ),
    );
    if (loginResponse.isLeft) {
      return loginResponse.left;
    }
    await tokenService.setToken(loginResponse.right.data.accessToken,
        loginResponse.right.data.refreshToken);
    _loggedInSuccess(redirectUrl: redirectUrl);
    return null;
  }

  Future<bool> loginByRefreshToken({
    String? redirectUrl,
    Duration timeOut = const Duration(seconds: 3),
  }) async {
    try {
      final oldSessionExisted = await refreshTokenManager.oldSessionExisted();
      if (!oldSessionExisted) {
        _logoutWithReason(LogoutReason.killApp, url: redirectUrl);
        return false;
      }
      final refreshTokenSuccess = await tokenService
          .refreshTokens(shouldTriggerExpired: false)
          .timeout(timeOut);
      if (refreshTokenSuccess.success) {
        print('succeeeeeeee $redirectUrl');
        _loggedInSuccess(
          redirectUrl: redirectUrl,
        );
        return true;
      }
      _logoutWithReason(LogoutReason.sessionExpired, url: redirectUrl);
      return false;
    } on TimeoutException {
      _logoutWithReason(LogoutReason.sessionExpired, url: redirectUrl);
      return false;
    }
  }

  // Future<Failure?> loginWithGoogle({
  //   required String idToken,
  //   String? redirectUrl,
  // }) async {
  //   final loginWithGoogleResponse = await authController.loginWithGoogle(
  //     LoginWithGoogleRequest(
  //       idToken: idToken,
  //     ),
  //   );
  //   if (loginWithGoogleResponse.isLeft) {
  //     return loginWithGoogleResponse.left;
  //   }
  //   await tokenService.setToken(
  //     loginWithGoogleResponse.right.tokenInfo ?? const JwtResponse(),
  //   );
  //   _loggedInSuccess(
  //       redirectUrl: redirectUrl, userId: loginWithGoogleResponse.right.userId);
  //   return null;
  // }

  Future<void> logout() async {
    final refreshToken = await refreshTokenManager.loadRefreshToken();
    await authController
        .logout(LogoutRequest(refreshToken: refreshToken ?? ''));
    await refreshTokenManager.removeRefreshToken();
    _logoutWithReason(LogoutReason.userLogout);
    sessionCubit.sessionExpired();
  }

  void _logoutWithReason(LogoutReason reason, {String? url}) {
    // if (reason == LogoutReason.userLogout ||
    //     reason == LogoutReason.sessionExpired) {
    //   // OneSignal.logout();
    // }
    emit(AuthStatusLoggedOutState(
      logoutReason: reason,
      url: url,
    ));
  }

  @override
  Future<void> close() async {
    await _sessionSubs?.cancel();
    return super.close();
  }
}
