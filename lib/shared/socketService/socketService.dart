import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketService {
  static io.Socket? _socket;
  static late BuildContext context;

  static void connectserver() {
    _socket = io.io(
        "http://188.166.176.114:3000",
        io.OptionBuilder()
            .setTransports(['websocket'])
            .enableForceNew()
            .build());

    _socket?.onConnect(
      (data) async {
        print("cout<< connect ${_socket!.id}");
      },
    );
    _socket?.onDisconnect((data) {
      print('cout<< disconnect$data');
    });

    _socket?.onConnectError((data) {
      print("cout<< err: $data");
    });
  }

  static void disconnect() {
    _socket?.disconnect();
  }

  static void sendMessage(Map<String, dynamic> data) {
    _socket?.emit('send', data);
  }

  static void receivedMessage() {
    _socket?.on("received", (data) {});
  }
}
