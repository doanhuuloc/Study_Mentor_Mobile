import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_mentor_mobile/infrastructure/services_impl/ai_impl/data_source.dart';

import '../application/services/ai/ai.dart';
import '../application/services/app/app_config/app_config.dart';
import '../application/services/app/app_data/app_username_service.dart';
import '../application/services/app/locale_service/locale_service.dart';

import '../application/services/app/token_service/refresh_token_manager.dart';
import '../application/services/app/token_service/token_service.dart';
import '../application/services/auth/auth.dart';
import '../application/services/education/education.dart';
import '../application/services/file/file.dart';

import '../application/services/socket/controller/controller.dart';
import '../application/services/user/controller/controller.dart';

import '../application/services/vietqr/controller/controller.dart';
import '../infrastructure/interceptors/auth_interceptor/auth_interceptor.dart';
import '../infrastructure/interceptors/auth_interceptor/token_based_auth_interceptor.dart';
import '../infrastructure/interceptors/logger_interceptor/logger_interceptor.dart';

import '../infrastructure/services_impl/ai_impl/ai_controller_impl.dart';
import '../infrastructure/services_impl/app_config_impl/app_config_impl.dart';
import '../infrastructure/services_impl/app_data_impl/app_username_service_impl.dart';
import '../infrastructure/services_impl/auth_impl/auth_controller_impl.dart';
import '../infrastructure/services_impl/auth_impl/data_source.dart';

import '../infrastructure/services_impl/education_impl/data_source.dart';
import '../infrastructure/services_impl/education_impl/education_controller_impl.dart';
import '../infrastructure/services_impl/file_impl/data_source.dart';
import '../infrastructure/services_impl/file_impl/file_controller_impl.dart';
import '../infrastructure/services_impl/locale_service_impl/locale_service_impl.dart';

import '../infrastructure/services_impl/socket_impl/socket_impl.dart';
import '../infrastructure/services_impl/token_service_impl/refresh_token_manager_impl.dart';

import '../infrastructure/services_impl/user_impl/data_source.dart';
import '../infrastructure/services_impl/user_impl/user_controller_impl.dart';

import '../infrastructure/services_impl/vietqr/data_source.dart';
import '../infrastructure/services_impl/vietqr/vietqr_controller_impl.dart';
import 'base/di_service.dart';

class AppDIData {
  const AppDIData({
    required this.authController,
    required this.config,
    required this.tokenService,
    required this.userController,
    required this.aiController,
    required this.refreshTokenManager,
    required this.appUsernameService,
    required this.fileController,
    required this.educationController,
    required this.socketController,
    required this.localeService,
    required this.vietqrController,
  });

  final AppConfig config;
  final AuthController authController;
  final UserController userController;
  final AIController aiController;
  final TokenService tokenService;
  final RefreshTokenManager refreshTokenManager;
  final AppUsernameService appUsernameService;
  final FileController fileController;
  final EducationController educationController;
  final SocketController socketController;
  final LocaleService localeService;
  final VietqrController vietqrController;
}

class AppDIService implements DIService<AppDIData> {
  TokenService createTokenService({
    required RefreshTokenManager refreshTokenManager,
  }) {
    final tokenService = TokenService(refreshTokenManager: refreshTokenManager);
    return tokenService;
  }

  RefreshTokenManager createRefreshTokenManager({
    required Dio dio,
    required SharedPreferences sharedPreferences,
  }) {
    final AuthController authController =
        AuthControllerImpl(authDataSource: AuthDataSource(dio));
    final RefreshTokenManager refreshTokenManager = RefreshTokenManagerImpl(
      authController: authController,
      prefs: sharedPreferences,
    );
    return refreshTokenManager;
  }

  @override
  Future<AppDIData> load() async {
    // config
    const AppConfigLoader configLoader = AppConfigLoaderImpl();
    final AppConfig appConfig = (await configLoader.loadConfig()).right;

    // shared pref
    final sharedPrefs = await SharedPreferences.getInstance();

    // dio options
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: const Duration(minutes: 5),
      receiveTimeout: const Duration(minutes: 5),
    );

    // dio AI options
    final optionsAI = BaseOptions(
      baseUrl: appConfig.baseUrlAI,
      connectTimeout: const Duration(minutes: 5),
      receiveTimeout: const Duration(minutes: 5),
    );

    // dio vietqr options
    final optionsVietqr = BaseOptions(
        baseUrl: appConfig.vietqrAPIUrl,
        connectTimeout: const Duration(minutes: 5),
        receiveTimeout: const Duration(minutes: 5),
        headers: {
          "x-client-id": "09cdb6a7-e088-4dbd-8bb0-d645389cdae3",
          "x-api-key": "93d46183-97c7-417a-8da7-23692310b980",
        });

    final loggerInterceptor = LoggerInterceptor();

    final tokenServiceDio = Dio(options);
    tokenServiceDio.interceptors.addAll([
      loggerInterceptor,
    ]);

    final refreshTokenManager = createRefreshTokenManager(
      dio: tokenServiceDio,
      sharedPreferences: sharedPrefs,
    );

    final tokenService = createTokenService(
      refreshTokenManager: refreshTokenManager,
    );

    final AuthInterceptor authInterceptor = TokenBasedAuthInterceptor(
      tokenService: tokenService,
      dio: tokenServiceDio,
    );

    // dio for api
    final dio = Dio(options);
    dio.interceptors.addAll([
      authInterceptor,
      loggerInterceptor,
    ]);

    // dio for ai
    final dioAI = Dio(optionsAI);
    dioAI.interceptors.addAll([
      authInterceptor,
      loggerInterceptor,
    ]);

    // dio for vietqr
    final dioVietqr = Dio(optionsVietqr);
    dioVietqr.interceptors.addAll([
      loggerInterceptor,
    ]);

    // auth
    final AuthDataSource authDataSource = AuthDataSource(dio);
    final AuthController authController =
        AuthControllerImpl(authDataSource: authDataSource);

    // user
    final UserDataSource userDataSource = UserDataSource(dio);
    final UserController userController =
        UserControllerImpl(userDataSource: userDataSource);

    // ai
    final AIDataSource aiDataSource = AIDataSource(dioAI);
    final AIController aiController =
        AIControllerImpl(aiDataSource: aiDataSource);

    // file
    final FileDataSource fileDataSource = FileDataSource(dio);
    final FileController fileController =
        FileControllerImpl(fileDataSource: fileDataSource, dio: dio);

    // education
    final EducationDataSource educationDataSource = EducationDataSource(dio);
    final EducationController educationController =
        EducationControllerImpl(educationDataSource: educationDataSource);

    // socket
    final SocketController socketController =
        SocketControllerImpl(socketUrl: appConfig.socketUrl);

    // app
    final AppUsernameService appUsernameService =
        AppUsernameServiceImpl(preferences: sharedPrefs);

    // locale service
    final LocaleService localeService =
        LocaleServiceImpl(sharedPreferences: sharedPrefs);

    // vietqr
    final VietqrDataSource vietqrDataSource = VietqrDataSource(dioVietqr);
    final VietqrController vietqrController =
        VietqrControllerImpl(vietqrDataSource: vietqrDataSource);

    // result
    return AppDIData(
      localeService: localeService,
      refreshTokenManager: refreshTokenManager,
      authController: authController,
      config: appConfig,
      tokenService: tokenService,
      fileController: fileController,
      userController: userController,
      aiController: aiController,
      educationController: educationController,
      socketController: socketController,
      appUsernameService: appUsernameService,
      vietqrController: vietqrController,
    );
  }
}
