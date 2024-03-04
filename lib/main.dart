import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/router/routerConfig.dart';
import 'package:study_mentor_mobile/screen/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp.router(
      routerConfig: MyRouterConfig.route,
      theme: ThemeData(primaryColor: Color(0xff5BB9E2)),
    );
  }
}
