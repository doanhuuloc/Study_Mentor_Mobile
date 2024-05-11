import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';
import '../../common/common.dart';
import '../ai.dart';

mixin AIController {
  Future<Result<Failure, BaseResponse<ChatAIResponse>>>
      chatAI({required ChatAIRequest chatAIRequest});

}
