import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';
import '../ai.dart';

mixin AIController {
  Future<Result<Failure, ChatAIResponse>> chatAI({
    required ChatAIRequest chatAIRequest,
    required String userId,
    required String idChatAI,
    required String roomId,
  });

  Future<Result<Failure, GetListRoomChatResponse>> getListRoomChat({
    required String userId,
    required String idChatAI,
  });

  Future<Result<Failure, CreateRoomChatResponse>> createRoomChat({
    required CreateRoomChatRequest createRoomChatRequest,
    required String userId,
    required String idChatAI,
  });

  Future<Result<Failure, GetDetailedMessageRoomChatResponse>>
      getDetailedMessageRoomChat({
    required String roomId,
  });
}
