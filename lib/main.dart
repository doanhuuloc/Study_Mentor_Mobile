// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:study_mentor_mobile/provider/user.dart';
// import 'package:study_mentor_mobile/router/routerConfig.dart';
// import 'package:study_mentor_mobile/screen/home/home.dart';
// import 'package:study_mentor_mobile/shared/socketService/socketService.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SocketService.connectserver();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MultiProvider(
//       providers: [ChangeNotifierProvider.value(value: UserViewModel())],
//       child: MaterialApp.router(
//         routerConfig: MyRouterConfig.route,
//         theme: ThemeData(primaryColor: Color(0xff0A2277)),
//       ),
//     );
//   }
// }

@MappableLib(generateInitializerForScope: InitializerScope.directory)
import 'package:dart_mappable/dart_mappable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'di/di.dart';
import 'firebase_options.dart';
import 'main.init.dart';
import 'presentation/app.dart';
import 'presentation/bases/bloc_utils/observer/app_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeMappers();
  Provider.debugCheckInvalidValueType = null;
  Bloc.observer = AppBlocObserver();

  final initFirebaseFuture = initFirebase();
  final initDIServiceFuture = initService();

  await Future.wait([
    initFirebaseFuture,
    lockOrientation(),
    initService(),
  ]);

  final diData = await initDIServiceFuture;

  runApp(SuccessManiaApp(
    data: diData,
  ));
}

Future<void> initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

Future<void> lockOrientation() {
  return SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

Future<AppDIData> initService() {
  final AppDIService appDIService = AppDIService();
  return appDIService.load();
}
