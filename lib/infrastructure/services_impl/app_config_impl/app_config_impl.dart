import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../application/failures/generic/generic_failure.dart';
import '../../../application/services/app/app_config/app_config.dart';
import '../../../utilities/failure/failure.dart';
import '../../../utilities/result/result.dart';

class AppConfigLoaderImpl with AppConfigLoader {
  const AppConfigLoaderImpl();

  @override
  Future<Result<Failure, AppConfig>> loadConfig() async {
    try {
      String envFileName = '.env';
      if (kReleaseMode) {
        envFileName = '.env.release';
      }
      await dotenv.load(fileName: envFileName);
      final packageInfo = await PackageInfo.fromPlatform();
      final version = packageInfo.version;
      final resolvedVersion = 'v$version';

      final appVariable = AppConfig(
        version: resolvedVersion,
        baseUrl: dotenv.env['BASE_URL'] ?? '',
        baseUrlAI: dotenv.env['BASE_URL_AI'] ?? '',
        socketUrl: dotenv.env['SOCKET_URL'] ?? '',
        vietqrAPIUrl: dotenv.env['VIETQR_API_URL'] ?? '',
        appLink: dotenv.env['APP_LINK'] ?? '',
        chatPay: dotenv.env['ID_CHAT_PAY'] ?? '',
        chatGemini: dotenv.env['ID_CHAT_GEMINI'] ?? '',
        chatGpt: dotenv.env['ID_CHAT_CHATGPT'] ?? '',
        imagePath: dotenv.env['IMAGE_PATH'] ?? '',
      );
      return Right(appVariable);
    } catch (error) {
      return const Left(GenericFailure());
    }
  }
}
