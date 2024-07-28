import 'package:study_mentor_mobile/application/services/socket/dto/src/get_accpet_tutor_info.dart';
import 'package:study_mentor_mobile/application/services/socket/dto/src/get_answer.dart';
import 'package:study_mentor_mobile/application/services/socket/dto/src/picked-tutor-accepted-question.dart';

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
      final ReceiveMessage receiveMessage = ReceiveMessage.fromJson(data);

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
    logging.i("on get tutor available");
    socket?.on(SocketEvent.ON_GET_TUTORS_AVAILABLE.event, (data) {
      logging.i(data);
      final OnGetTutor onGetTutor = OnGetTutor.fromJson(data);
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

  @override
  void getGetAcceptTutorInfo({Socket? socket, required Function function}) {
    logging.i("on get tutor info");
    socket?.on(SocketEvent.GET_ACCEPT_TUTOR_INFO.event, (data) {
      logging.i(data);
      GetAcceptTutorInfo tutor = GetAcceptTutorInfo.fromJson(data);
      function(tutor.data);
    });
  }

  @override
  void pickedTutorAcceptedQuestion(
      {Socket? socket, required Function function}) {
    logging.i("on picked tutor accepted question");
    socket?.on(SocketEvent.PICKED_TUTOR_ACCEPTED_QUESTION.event, (data) {
      logging.i(data);
      PickedTutorAcceptedQuestion pickedtutor =
          PickedTutorAcceptedQuestion.fromJson(data);
      function(pickedtutor);
    });
  }

  @override
  void getAnswer({Socket? socket, required Function function}) {
    logging.i("on get answer");
    socket?.on(SocketEvent.GET_ANSWER.event, (data) {
      logging.i(data);
      final GetAnswer answer = GetAnswer.fromJson(data);
      function(answer);
    });
  }

  @override
  void cancelGGMeet({Socket? socket, required InfoGGMeet infoGGMeet}) {
    logging.i("cancel gg meet");
    socket?.emit(SocketEvent.CANCEL_GGMEET.event, infoGGMeet);
  }

  @override
  void receiveInfoGGMeet({Socket? socket, required Function function}) {
    logging.i("on receive info ggmeet");
    socket?.on(SocketEvent.RECEIVE_INFO_GOOGLE_MEET.event, (data) {
      logging.i(data);
      final InfoGGMeet infoGGMeet = InfoGGMeet.fromJson(data);
      function(infoGGMeet);
    });
  }

  @override
  void sendInfoGGMeet({Socket? socket, required InfoGGMeet infoGGMeet}) {
    logging.i("send info gg meet");
    socket?.emit(SocketEvent.SEND_INFO_GOOGLE_MEET.event, infoGGMeet);
  }

  @override
  void receiveGGMeet({Socket? socket, required Function function}) {
    logging.i("on receive ggmeet");
    socket?.on(SocketEvent.RECEIVE_GGMEET.event, (data) {
      logging.i(data);
      final ReceiveGGMeet ggmeet = ReceiveGGMeet.fromJson(data);
      function(ggmeet);
    });
  }
}
