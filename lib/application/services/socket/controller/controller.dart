import 'package:socket_io_client/socket_io_client.dart';
import '../dto/dto.dart';

mixin SocketController {
  Socket connect({required String userId});
  void disconnect({
    Socket? socket,
    required String userId,
  });

  void sendNotification({
    Socket? socket,
    required SendNotification sendNotification,
  });

  void notification({
    Socket? socket,
  });

  void createRoomChat({
    Socket? socket,
    required CreateRoomChat createRoomChat,
  });

  void sendMessage({
    Socket? socket,
    required SendMessage sendMessage,
  });
  void receiveMessage({
    Socket? socket,
    required Function function,
  });

  void emitGetTutorAvailable({
    Socket? socket,
    required EmitGetTutor getTutor,
  });
  void onGetTutorAvailable({
    Socket? socket,
    required Function function,
  });
  void getVoucher({Socket? socket});

  void getGetAcceptTutorInfo({Socket? socket, required Function function});
  void pickedTutorAcceptedQuestion(
      {Socket? socket, required Function function});

  void getAnswer({Socket? socket, required Function function});

  void sendInfoGGMeet({Socket? socket, required InfoGGMeet infoGGMeet});
  void receiveInfoGGMeet({Socket? socket, required Function function});
  void cancelGGMeet({Socket? socket, required InfoGGMeet infoGGMeet});
  void receiveGGMeet({Socket? socket, required Function function});
  void payment({Socket?socket,required Function function});
}
