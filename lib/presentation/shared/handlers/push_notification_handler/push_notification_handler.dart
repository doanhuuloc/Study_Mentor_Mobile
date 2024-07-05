import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'package:study_mentor_mobile/presentation/bases/user_cubit/user_cubit.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/utilities/logging/logging.dart';

import '../../../bases/childless_assertion/childless_assertion.dart';
import '../../../bases/navigation_context_resolver/navigation_context_resolver.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

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

  void handleClickNotification(String questionId) {
    DetailedQuestionRouteData(questionId: questionId).go(context);
  }

  Future<void> _initPushNotification() async {
    final FirebaseMessaging messaging = FirebaseMessaging.instance;

    await messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    await FirebaseMessaging.instance.setAutoInitEnabled(true);
    final token = await FirebaseMessaging.instance.getToken();
    print('token: $token');
    context.read<UserCubit>().setFcmToken(token);

    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    var initiizationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iosInit = const DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    var initializationSettings = InitializationSettings(
        android: initiizationSettingsAndroid, iOS: iosInit);

    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        // if (details.payload != "") {
        //   handleClickNotification(details.payload!);
        // }
        final resolvedNavigatorContext = maybeResolve(
          context,
          navigatorKey: widget.navigatorKey,
          rootNavigator: true,
        );
        if (resolvedNavigatorContext == null ||
            !resolvedNavigatorContext.mounted) {
          return;
        }
        if (details.payload != null && details.payload != "") {
          DetailedQuestionRouteData(questionId: details.payload!)
              .go(resolvedNavigatorContext);
        }
      },
    );

    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
        '1', 'pushnotification',
        channelDescription: "Your description",
        color: Color(0xffff9d89),
        colorized: true,
        priority: Priority.max,
        channelShowBadge: true,
        importance: Importance.high,
        playSound: false);

    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: const DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    );

    // on message from firebase
    FirebaseMessaging.onMessage.listen((event) async {
      if (event.notification != null) {
        logging.i({
          "onMessage",
          event.notification!.title,
          event.notification!.body,
          event.data
        });
      }
      await flutterLocalNotificationsPlugin.show(
        0,
        event.notification!.title,
        event.notification!.body,
        platformChannelSpecifics,
        payload: event.data["questionId"] ?? "",
      );
    });

    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      if (event.notification != null) {
        final resolvedNavigatorContext = maybeResolve(
          context,
          navigatorKey: widget.navigatorKey,
          rootNavigator: true,
        );

        if (resolvedNavigatorContext == null ||
            !resolvedNavigatorContext.mounted) {
          return;
        }

        if (event.data["questionId"] != null &&
            event.data["questionId"] != "") {
          DetailedQuestionRouteData(questionId: event.data["questionId"])
              .go(resolvedNavigatorContext);
        }

        logging.i({
          "onMessageOnpenedApp",
          event.notification!.title,
          event.notification!.body,
          event.data
        });
      }
    });

    // FirebaseMessaging.onBackgroundMessage((message) async {
    //   logging.i({"onbackgroundmessage"});
    // });
  }
}
