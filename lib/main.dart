import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_mentor_mobile/provider/user.dart';
import 'package:study_mentor_mobile/router/routerConfig.dart';
import 'package:study_mentor_mobile/screen/home/home.dart';
import 'package:study_mentor_mobile/shared/socketService/socketService.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SocketService.connectserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: UserViewModel())],
      child: MaterialApp.router(
        routerConfig: MyRouterConfig.route,
        theme: ThemeData(primaryColor: Color(0xff0A2277)),
      ),
    );
  }
}
