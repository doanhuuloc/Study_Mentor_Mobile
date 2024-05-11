import '../../../application/services/ai/ai.dart';
import '../../../utilities/failure/failure.dart';
import '../../../utilities/result/result.dart';
import '../../data_source_error_handler_mixin.dart';
import 'data_source.dart';

class AIControllerImpl with AIController, DataSourceErrorHandler {
  const AIControllerImpl({
    required this.aiDataSource,
  });

  final AIDataSource aiDataSource;

  @override
  Future<Result<Failure, ChatAIResponse>> chatAI(
      {required ChatAIRequest chatAIRequest,
      required String userId,
      required String idChatAI,
      required String roomId}) {
    return handleApiResult(
        future: () => aiDataSource.chatAI(
              userId: userId,
              idChatAI: idChatAI,
              roomId: roomId,
              chatAIRequest: chatAIRequest,
            ));
  }

  @override
  Future<Result<Failure, List<ListRoomChatResponse>>> getListRoomChat(
      {required String userId, required String idChatAI}) {
    return handleApiResult(
        future: () =>
            aiDataSource.getListRoomChat(userId: userId, idChatAI: idChatAI));
  }

  @override
  Future<Result<Failure, CreateRoomChatResponse>> createRoomChat(
      {required CreateRoomChatRequest createRoomChatRequest,
      required String userId,
      required String idChatAI}) {
    return handleApiResult(
        future: () => aiDataSource.createRoomChat(
              userId: userId,
              idChatAI: idChatAI,
              createRoomChatRequest: createRoomChatRequest,
            ));
  }

  @override
  Future<Result<Failure, GetDetailedMessageRoomChatResponse>>
      getDetailedMessageRoomChat({required String roomId}) {
    return handleApiResult(
        future: () => aiDataSource.getDetailedMessageRoomChat(roomId: roomId));
  }
}
