import 'package:socket_io_client/socket_io_client.dart';
import '../../../application/services/socket/controller/controller.dart';
import '../../../application/services/socket/dto/dto.dart';
import '../bloc_utils/safe_cubit/safe_cubit.dart';
part 'socket_state.dart';

class SocketCubit extends SafeCubit<SocketState> {
  SocketCubit({
    required this.socketController,
  }) : super(const SocketState());

  final SocketController socketController;

  void connect({required String userId}) {
    Socket socket = socketController.connect(userId: userId);
    emit(state.copyWith(socket: socket));
  }

  void disconnect({required String userId}) {}

  void sendNotification({required SendNotification sendNotification}) {
    socketController.sendNotification(
        socket: state.socket, sendNotification: sendNotification);
  }

  void notification() {
    socketController.notification(socket: state.socket);
  }

  void createRoomChat({required CreateRoomChat createRoomChat}) {
    socketController.createRoomChat(
        socket: state.socket!, createRoomChat: createRoomChat);
  }

  void sendMessage({required SendMessage sendMessage}) {
    socketController.sendMessage(
        socket: state.socket, sendMessage: sendMessage);
  }

  void receiveMessage(Function function) {
    socketController.receiveMessage(
      socket: state.socket,
      function: function,
    );
  }

  void emitGetTutorAvailable({required EmitGetTutor getTutor}) {
    socketController.emitGetTutorAvailable(
        socket: state.socket, getTutor: getTutor);
  }

  void onGetTutorAvailable(Function function) {
    socketController.onGetTutorAvailable(
      socket: state.socket,
      function: function,
    );
  }

  void getVoucher() {
    socketController.getVoucher(socket: state.socket);
  }

  void getAcceptTutorInfo(Function function) {
    socketController.getGetAcceptTutorInfo(
        socket: state.socket, function: function);
  }

  void pickedTutorAcceptedQuestion(Function function) {
    socketController.pickedTutorAcceptedQuestion(
        socket: state.socket, function: function);
  }

  void getAnswer(Function function) {
    socketController.getAnswer(socket: state.socket, function: function);
  }

  void cancelGGMeet(InfoGGMeet infoGGMeet) {
    socketController.cancelGGMeet(socket: state.socket, infoGGMeet: infoGGMeet);
  }

  void receiveInfoGGMeet(Function function) {
    socketController.receiveInfoGGMeet(
        socket: state.socket, function: function);
  }

  void sendInfoGGMeet(InfoGGMeet infoGGMeet) {
    socketController.sendInfoGGMeet(
        socket: state.socket, infoGGMeet: infoGGMeet);
  }

  void receiveGGMeet(Function function) {
    socketController.receiveGGMeet(socket: state.socket, function: function);
  }
}
