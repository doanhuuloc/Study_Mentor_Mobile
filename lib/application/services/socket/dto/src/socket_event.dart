// ignore_for_file: constant_identifier_names

enum SocketEvent {
  DISCONNECT('disconnect'),
  CREATE_CHAT('create-chat'),
  INTRUSTORACCEPTED("tutor-accepted-question"),
  NOTIFICATION('notification'),
  SEND_NOTIFICATION('sendNotification'),
  SEND_MESSAGE('send-message'),
  RECEIVE_MESSAGE('receive-message'),
  QUESTION('question'),
  EMIT_GET_TUTORS_AVAILABLE('tutorsAvailable'),
  ON_GET_TUTORS_AVAILABLE('tutorsAvailable'),
  GET_VOUCHET("get-voucher"),
  ERROR('error');

  final String event;

  const SocketEvent(this.event);
}
