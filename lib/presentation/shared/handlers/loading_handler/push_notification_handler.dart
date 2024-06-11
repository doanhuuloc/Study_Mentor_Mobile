import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

import '../../../bases/childless_assertion/childless_assertion.dart';
import '../../../bases/navigation_context_resolver/navigation_context_resolver.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class PushNotificationHandler extends SingleChildStatefulWidget {
  const PushNotificationHandler({
    super.key,
    super.child,
    this.navigatorKey,
  });

  final GlobalKey<NavigatorState>? navigatorKey;

  @override
  SingleChildState<PushNotificationHandler> createState() =>
      _AuthBasedRoutingHandlerState();
}

class _AuthBasedRoutingHandlerState
    extends SingleChildState<PushNotificationHandler>
    with NavigationContextResolverMixin, StateChildlessAssertion {
  BuildContext get navContext => resolve(context);

  @override
  void initState() {
    super.initState();
    _initPushNotification();
  }

  Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    print('Handling a background message ${message.messageId}');
  }

  Future<void> _initPushNotification() async {
//     final appConfig = context.read<AppConfig>();
//     //Remove this method to stop PushNotification Debugging
//     PushNotification.Debug.setLogLevel(OSLogLevel.verbose);

//     PushNotification.initialize(appConfig.PushNotificationAppId);

// // The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
//     PushNotification.Notifications.requestPermission(true);
//     PushNotification.Notifications.addClickListener((event) {
//       logging.i(event.notification.launchUrl);
//       logging.i(event.result.url);
//     });
    final FirebaseMessaging messaging = FirebaseMessaging.instance;

    await messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    await FirebaseMessaging.instance.setAutoInitEnabled(true);
    final token = await FirebaseMessaging.instance.getToken();
    FirebaseMessaging.onMessage.listen((event) {
      print('onMessage: $event');
    });
    print('Token: $token');

    // var initiizationSettingsAndroid =
    //     const AndroidInitializationSettings('@mipmap/ic_launcher');
    // var iosInit = const DarwinInitializationSettings(
    //   requestAlertPermission: true,
    //   requestBadgePermission: true,
    //   requestSoundPermission: true,
    // );
    // var initializationSettings = InitializationSettings(
    //     android: initiizationSettingsAndroid, iOS: iosInit);

    // flutterLocalNotificationsPlugin.initialize(
    //   initializationSettings,
    // );

    // var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
    //     '1', 'pushnotification',
    //     channelDescription: "Your description",
    //     color: Color(0xffff9d89),
    //     colorized: true,
    //     priority: Priority.max,
    //     channelShowBadge: true,
    //     importance: Importance.high,
    //     playSound: false);

    // var platformChannelSpecifics = NotificationDetails(
    //   android: androidPlatformChannelSpecifics,
    //   iOS: const DarwinNotificationDetails(
    //     presentAlert: true,
    //     presentBadge: true,
    //     presentSound: true,
    //   ),
    // );

    // await flutterLocalNotificationsPlugin.show(
    //   0,
    //   'Pomodoro',
    //   content,
    //   platformChannelSpecifics,
    //   payload: 'item x',
    // );
  }
}
