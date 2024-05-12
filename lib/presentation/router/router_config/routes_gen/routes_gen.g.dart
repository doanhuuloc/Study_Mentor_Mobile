// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes_gen.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $alertRouteData,
      $confirmRouteData,
      $imagePickerRouteData,
      $dropdownSheetRouteData,
      $mainShellRouteData,
      $testLoadingRouteData,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/splash',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/splash',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $alertRouteData => GoRouteData.$route(
      path: '/alert',
      parentNavigatorKey: AlertRouteData.$parentNavigatorKey,
      factory: $AlertRouteDataExtension._fromState,
    );

extension $AlertRouteDataExtension on AlertRouteData {
  static AlertRouteData _fromState(GoRouterState state) => AlertRouteData(
        title: state.uri.queryParameters['title'],
        content: state.uri.queryParameters['content']!,
        acceptTitle: state.uri.queryParameters['accept-title'],
      );

  String get location => GoRouteData.$location(
        '/alert',
        queryParams: {
          if (title != null) 'title': title,
          'content': content,
          if (acceptTitle != null) 'accept-title': acceptTitle,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $confirmRouteData => GoRouteData.$route(
      path: '/confirm',
      parentNavigatorKey: ConfirmRouteData.$parentNavigatorKey,
      factory: $ConfirmRouteDataExtension._fromState,
    );

extension $ConfirmRouteDataExtension on ConfirmRouteData {
  static ConfirmRouteData _fromState(GoRouterState state) => ConfirmRouteData(
        title: state.uri.queryParameters['title'],
        content: state.uri.queryParameters['content']!,
        acceptTitle: state.uri.queryParameters['accept-title'],
        rejectTitle: state.uri.queryParameters['reject-title'],
      );

  String get location => GoRouteData.$location(
        '/confirm',
        queryParams: {
          if (title != null) 'title': title,
          'content': content,
          if (acceptTitle != null) 'accept-title': acceptTitle,
          if (rejectTitle != null) 'reject-title': rejectTitle,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $imagePickerRouteData => GoRouteData.$route(
      path: '/image-picker',
      parentNavigatorKey: ImagePickerRouteData.$parentNavigatorKey,
      factory: $ImagePickerRouteDataExtension._fromState,
    );

extension $ImagePickerRouteDataExtension on ImagePickerRouteData {
  static ImagePickerRouteData _fromState(GoRouterState state) =>
      const ImagePickerRouteData();

  String get location => GoRouteData.$location(
        '/image-picker',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $dropdownSheetRouteData => GoRouteData.$route(
      path: '/dropdown-sheet',
      parentNavigatorKey: DropdownSheetRouteData.$parentNavigatorKey,
      factory: $DropdownSheetRouteDataExtension._fromState,
    );

extension $DropdownSheetRouteDataExtension on DropdownSheetRouteData {
  static DropdownSheetRouteData _fromState(GoRouterState state) =>
      DropdownSheetRouteData(
        $extra: state.extra as List<DropDownBarData<dynamic>>,
      );

  String get location => GoRouteData.$location(
        '/dropdown-sheet',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $mainShellRouteData => ShellRouteData.$route(
      factory: $MainShellRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'chat',
              parentNavigatorKey: ChatRouteData.$parentNavigatorKey,
              factory: $ChatRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'login',
              parentNavigatorKey: HomeLoginRouteData.$parentNavigatorKey,
              factory: $HomeLoginRouteDataExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/history',
          factory: $HistoryRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/profile',
          factory: $ProfileRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'login',
              parentNavigatorKey: ProfileLoginRouteData.$parentNavigatorKey,
              factory: $ProfileLoginRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'register',
                  parentNavigatorKey: RegisterRouteData.$parentNavigatorKey,
                  factory: $RegisterRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $MainShellRouteDataExtension on MainShellRouteData {
  static MainShellRouteData _fromState(GoRouterState state) =>
      const MainShellRouteData();
}

extension $HomeRouteDataExtension on HomeRouteData {
  static HomeRouteData _fromState(GoRouterState state) => const HomeRouteData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChatRouteDataExtension on ChatRouteData {
  static ChatRouteData _fromState(GoRouterState state) => ChatRouteData(
        $extra: state.extra as String?,
      );

  String get location => GoRouteData.$location(
        '/home/chat',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $HomeLoginRouteDataExtension on HomeLoginRouteData {
  static HomeLoginRouteData _fromState(GoRouterState state) =>
      HomeLoginRouteData(
        redirectUrl: state.uri.queryParameters['redirect-url'],
      );

  String get location => GoRouteData.$location(
        '/home/login',
        queryParams: {
          if (redirectUrl != null) 'redirect-url': redirectUrl,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HistoryRouteDataExtension on HistoryRouteData {
  static HistoryRouteData _fromState(GoRouterState state) =>
      const HistoryRouteData();

  String get location => GoRouteData.$location(
        '/history',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteDataExtension on ProfileRouteData {
  static ProfileRouteData _fromState(GoRouterState state) =>
      const ProfileRouteData();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileLoginRouteDataExtension on ProfileLoginRouteData {
  static ProfileLoginRouteData _fromState(GoRouterState state) =>
      ProfileLoginRouteData(
        redirectUrl: state.uri.queryParameters['redirect-url'],
      );

  String get location => GoRouteData.$location(
        '/profile/login',
        queryParams: {
          if (redirectUrl != null) 'redirect-url': redirectUrl,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RegisterRouteDataExtension on RegisterRouteData {
  static RegisterRouteData _fromState(GoRouterState state) =>
      const RegisterRouteData();

  String get location => GoRouteData.$location(
        '/profile/login/register',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $testLoadingRouteData => GoRouteData.$route(
      path: '/test-infinite-loading',
      factory: $TestLoadingRouteDataExtension._fromState,
    );

extension $TestLoadingRouteDataExtension on TestLoadingRouteData {
  static TestLoadingRouteData _fromState(GoRouterState state) =>
      const TestLoadingRouteData();

  String get location => GoRouteData.$location(
        '/test-infinite-loading',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
