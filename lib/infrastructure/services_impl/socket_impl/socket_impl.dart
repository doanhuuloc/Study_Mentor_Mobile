import '../../../application/services/socket/controller/controller.dart';
import 'package:socket_io_client/socket_io_client.dart';
import '../../../application/services/socket/dto/dto.dart';
import '../../../utilities/logging/logging.dart';

class SocketControllerImpl with SocketController {
  const SocketControllerImpl({required this.socketUrl});
  final String socketUrl;

  @override
  Socket connect({required String userId}) {
    Socket socket = io("$socketUrl?userId=$userId",
        OptionBuilder().setTransports(['websocket']).enableForceNew().build());

    socket.onConnect(
      (data) async {
        logging.i("connect $data");
      },
    );
    socket.onDisconnect((data) {
      logging.i("disconnect $data");
    });

    socket.onConnectError((data) {
      logging.e("connect err $data");
    });

    return socket;
  }

  @override
  void createRoomChat(
      {Socket? socket, required CreateRoomChat createRoomChat}) {
    logging.i(createRoomChat);
    socket?.emit(
      SocketEvent.CREATE_CHAT.event,
      createRoomChat,
    );
  }

  @override
  void intrustorAccepted({Socket? socket}) {
    logging.i("on intrustor accepted");

    socket?.on(SocketEvent.INTRUSTORACCEPTED.event, (data) {
      logging.i(data);
    });
  }

  @override
  void disconnect({Socket? socket, required String userId}) {
    socket?.emit(SocketEvent.DISCONNECT.event);
  }

  @override
  void sendNotification(
      {Socket? socket, required SendNotification sendNotification}) {
    logging.i(sendNotification);
    socket?.emit(SocketEvent.SEND_MESSAGE.event, sendNotification);
  }

  @override
  void notification({Socket? socket}) {
    socket?.on(SocketEvent.NOTIFICATION.event, (data) {
      final Notification notification = data;
      logging.i(notification);
    });
  }

  @override
  void sendMessage({Socket? socket, required SendMessage sendMessage}) {
    logging.i(sendMessage);
    socket?.emit(SocketEvent.SEND_MESSAGE.event, sendMessage);
  }

  @override
  void receiveMessage({Socket? socket, required Function function}) {
    logging.i("on receive message");

    socket?.on(SocketEvent.RECEIVE_MESSAGE.event, (data) {
      final ReceiveMessage receiveMessage = ReceiveMessage(
        senderId: data["senderId"],
        recipientId: data["recipientId"],
        createdAt: DateTime.now(),
        content: data["content"],
        roomId: data["roomId"],
        files: data["files"]
      );
      logging.i(receiveMessage);
      function(receiveMessage);
    });
  }

  @override
  void emitGetTutorAvailable({Socket? socket, required EmitGetTutor getTutor}) {
    logging.i(getTutor);
    socket?.emit(SocketEvent.EMIT_GET_TUTORS_AVAILABLE.event, getTutor);
  }

  @override
  void onGetTutorAvailable({Socket? socket, required Function function}) {
    socket?.on(SocketEvent.ON_GET_TUTORS_AVAILABLE.event, (data) {
      final OnGetTutor onGetTutor = data;
      logging.i(onGetTutor);
      function(onGetTutor);
    });
  }

  @override
  void getVoucher({Socket? socket}) {
    logging.i("on get voucher");

    socket?.on(SocketEvent.GET_VOUCHET.event, (data) {
      logging.i(data);
    });
  }
}
