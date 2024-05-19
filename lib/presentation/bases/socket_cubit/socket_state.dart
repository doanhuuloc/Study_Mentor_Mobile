part of 'socket_cubit.dart';

class SocketState {
  const SocketState({
    this.socket,
  });

  final Socket? socket;

  SocketState copyWith({
    Socket? socket,
  }) {
    return SocketState(
      socket: socket ?? this.socket,
    );
  }
}
