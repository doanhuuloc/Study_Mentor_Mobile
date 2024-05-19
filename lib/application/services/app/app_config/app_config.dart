import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';

class AppConfig {
  const AppConfig({
    required this.baseUrl,
    required this.baseUrlAI,
    required this.socketUrl,
    required this.version,
    required this.appLink,
    required this.chatPay,
    required this.chatGemini,
    required this.chatGpt,
  });

  final String version;
  final String baseUrl;
  final String baseUrlAI;
  final String socketUrl;
  final String appLink;
  final String chatPay;
  final String chatGemini;
  final String chatGpt;
}

mixin AppConfigLoader {
  Future<Result<Failure, AppConfig>> loadConfig();
}
