import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../application/services/ai/ai.dart';
import '../../../application/services/socket/dto/dto.dart';

part 'data_source.g.dart';

@RestApi()
abstract class AIDataSource {
  factory AIDataSource(Dio dio, {String baseUrl}) = _AIDataSource;

  @POST('/ai/chatAI/{userId}/{idChatAI}/{roomId}')
  Future<ChatAIResponse> chatAI({
    @Body() required SendMessage chatAIRequest,
  });

  @GET('/ai/listRoom/{userId}/{idChatAI}')
  Future<List<ListRoomChatResponse>> getListRoomChat({
    @Path('userId') required String userId,
    @Path('idChatAI') required String idChatAI,
  });

  @POST('/ai/CreateRoom/{userId}/{idChatAI}')
  Future<CreateRoomChatResponse> createRoomChat({
    @Path('userId') required String userId,
    @Path('idChatAI') required String idChatAI,
    @Body() required CreateRoomChatRequest createRoomChatRequest,
  });

  @GET('/ai/listQuestion/{roomId}')
  Future<List<ChatAIResponse>> getDetailedMessageRoomChat({
    @Path('roomId') required String roomId,
  });
}
