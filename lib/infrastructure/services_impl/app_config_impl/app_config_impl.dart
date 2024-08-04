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
      // String envFileName = '.env';
      // if (kReleaseMode) {
      //   envFileName = '.env.release';
      // }
      // await dotenv.load(fileName: envFileName);
      // final packageInfo = await PackageInfo.fromPlatform();
      // final version = packageInfo.version;
      // final resolvedVersion = 'v$version';

      final appVariable = AppConfig(
        version: '1.0.0',
        baseUrl: 'https://api.studymentor.id.vn',
        baseUrlAI: 'https://ai.studymentor.id.vn',
        socketUrl: 'https://api.studymentor.id.vn',
        vietqrAPIUrl: 'https://api.vietqr.io"',
        appLink: '',
        chatPay: '4c363f7b-e292-49ac-a653-57f45f011a49',
        chatGemini: 'cb0fc00b-9f9e-4481-ad5e-4499ef7528e8',
        chatGpt: '8bbe44dc-9973-4bf3-a56d-2e7364ef5fad',
        imagePath: 'https://storage.googleapis.com/study-mentor',
      );
      return Right(appVariable);
    } catch (error) {
      return const Left(GenericFailure());
    }
  }
}
