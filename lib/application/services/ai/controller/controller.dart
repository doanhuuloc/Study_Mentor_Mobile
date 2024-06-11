import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';
import '../../socket/dto/dto.dart';
import '../ai.dart';

mixin AIController {
  Future<Result<Failure, ChatAIResponse>> chatAI({
    required SendMessage chatAIRequest,
  });

  Future<Result<Failure, List<ListRoomChatResponse>>> getListRoomChat({
    required String userId,
    required String idChatAI,
  });

  Future<Result<Failure, CreateRoomChatResponse>> createRoomChat({
    required CreateRoomChatRequest createRoomChatRequest,
    required String userId,
    required String idChatAI,
  });

  Future<Result<Failure, List<ChatAIResponse>>> getDetailedMessageRoomChat({
    required String roomId,
  });
}
