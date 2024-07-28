// ignore_for_file: constant_identifier_names

enum SocketEvent {
  DISCONNECT('disconnect'),
  CREATE_CHAT('create-chat'),
  NOTIFICATION('notification'),
  SEND_NOTIFICATION('sendNotification'),
  SEND_MESSAGE('send-message'),
  RECEIVE_MESSAGE('receive-message'),
  QUESTION('question'),
  EMIT_GET_TUTORS_AVAILABLE('tutors-available'),
  ON_GET_TUTORS_AVAILABLE('get-tutors-available'),
  GET_VOUCHET("get-voucher"),
  ERROR('error'),
  GET_ACCEPT_TUTOR_INFO('tutor-accepted-question'),
  PICKED_TUTOR_ACCEPTED_QUESTION('picked-tutor-accepted-question'),
  GET_ANSWER('answer'),
  CREATE_GGMEET('create-ggmeet'),
  GET_LINK_GGMEET('receive-ggmeet'),
  SEND_INFO_GOOGLE_MEET('send-info-google-meet'),
  RECEIVE_INFO_GOOGLE_MEET('receive-info-google-meet'),
  CANCEL_GGMEET('cancel-google-meet'),
  RECEIVE_GGMEET("receive-ggmeet");

  final String event;

  const SocketEvent(this.event);
}
