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
              path: 'createQuestion',
              parentNavigatorKey: CreateQuestionRouteData.$parentNavigatorKey,
              factory: $CreateQuestionRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'findIntrustor/:questionId',
              parentNavigatorKey: FindIntrustorRouteData.$parentNavigatorKey,
              factory: $FindIntrustorRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'findingIntrustor/:questionId',
                  parentNavigatorKey:
                      FindingIntrustorRouteData.$parentNavigatorKey,
                  factory: $FindingIntrustorRouteDataExtension._fromState,
                ),
              ],
            ),
            GoRouteData.$route(
              path: 'detailedQuestion/:questionId',
              parentNavigatorKey: DetailedQuestionRouteData.$parentNavigatorKey,
              factory: $DetailedQuestionRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'intrustorInfo',
              parentNavigatorKey: IntrustorInfoRouteData.$parentNavigatorKey,
              factory: $IntrustorInfoRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'chatai/:typeAI',
              parentNavigatorKey: ChatAIRouteData.$parentNavigatorKey,
              factory: $ChatAIRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'chatintrustor',
              parentNavigatorKey: ChatIntrustorRouteData.$parentNavigatorKey,
              factory: $ChatIntrustorRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'login',
              parentNavigatorKey: HomeLoginRouteData.$parentNavigatorKey,
              factory: $HomeLoginRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'createGGMeet',
              parentNavigatorKey: CreateGGMeetRouteData.$parentNavigatorKey,
              factory: $CreateGGMeetRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'reportQuestion',
              parentNavigatorKey: ReportQuestionRouteData.$parentNavigatorKey,
              factory: $ReportQuestionRouteDataExtension._fromState,
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
                  parentNavigatorKey:
                      ProfileRegisterRouteData.$parentNavigatorKey,
                  factory: $ProfileRegisterRouteDataExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'resetPassword',
                  parentNavigatorKey:
                      ResetPasswordRouteData.$parentNavigatorKey,
                  factory: $ResetPasswordRouteDataExtension._fromState,
                ),
              ],
            ),
            GoRouteData.$route(
              path: 'changePassword',
              parentNavigatorKey: ChangePasswordRouteData.$parentNavigatorKey,
              factory: $ChangePasswordRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'editprofile',
              parentNavigatorKey: EditProfileRouteData.$parentNavigatorKey,
              factory: $EditProfileRouteDataExtension._fromState,
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

extension $CreateQuestionRouteDataExtension on CreateQuestionRouteData {
  static CreateQuestionRouteData _fromState(GoRouterState state) =>
      const CreateQuestionRouteData();

  String get location => GoRouteData.$location(
        '/home/createQuestion',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FindIntrustorRouteDataExtension on FindIntrustorRouteData {
  static FindIntrustorRouteData _fromState(GoRouterState state) =>
      FindIntrustorRouteData(
        questionId: state.pathParameters['questionId']!,
        $extra: state.extra as FindIntrustorExtraData?,
      );

  String get location => GoRouteData.$location(
        '/home/findIntrustor/${Uri.encodeComponent(questionId)}',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $FindingIntrustorRouteDataExtension on FindingIntrustorRouteData {
  static FindingIntrustorRouteData _fromState(GoRouterState state) =>
      FindingIntrustorRouteData(
        questionId: state.pathParameters['questionId']!,
      );

  String get location => GoRouteData.$location(
        '/home/findIntrustor/${Uri.encodeComponent(questionId)}/findingIntrustor/${Uri.encodeComponent(questionId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailedQuestionRouteDataExtension on DetailedQuestionRouteData {
  static DetailedQuestionRouteData _fromState(GoRouterState state) =>
      DetailedQuestionRouteData(
        questionId: state.pathParameters['questionId']!,
        $extra: state.extra as UserInfoResponse?,
      );

  String get location => GoRouteData.$location(
        '/home/detailedQuestion/${Uri.encodeComponent(questionId)}',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $IntrustorInfoRouteDataExtension on IntrustorInfoRouteData {
  static IntrustorInfoRouteData _fromState(GoRouterState state) =>
      IntrustorInfoRouteData(
        $extra: state.extra as IntrustorInfoExtraData,
      );

  String get location => GoRouteData.$location(
        '/home/intrustorInfo',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $ChatAIRouteDataExtension on ChatAIRouteData {
  static ChatAIRouteData _fromState(GoRouterState state) => ChatAIRouteData(
        typeAI: _$TypeAIEnumMap._$fromName(state.pathParameters['typeAI']!),
        $extra: state.extra as String?,
      );

  String get location => GoRouteData.$location(
        '/home/chatai/${Uri.encodeComponent(_$TypeAIEnumMap[typeAI]!)}',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

const _$TypeAIEnumMap = {
  TypeAI.chatgpt: 'chatgpt',
  TypeAI.gemini: 'gemini',
  TypeAI.pay: 'pay',
};

extension $ChatIntrustorRouteDataExtension on ChatIntrustorRouteData {
  static ChatIntrustorRouteData _fromState(GoRouterState state) =>
      ChatIntrustorRouteData(
        $extra: state.extra as ChatIntrustorExtraData?,
      );

  String get location => GoRouteData.$location(
        '/home/chatintrustor',
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

extension $CreateGGMeetRouteDataExtension on CreateGGMeetRouteData {
  static CreateGGMeetRouteData _fromState(GoRouterState state) =>
      const CreateGGMeetRouteData();

  String get location => GoRouteData.$location(
        '/home/createGGMeet',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ReportQuestionRouteDataExtension on ReportQuestionRouteData {
  static ReportQuestionRouteData _fromState(GoRouterState state) =>
      ReportQuestionRouteData(
        $extra: state.extra as GetQuestionInfoResponse,
      );

  String get location => GoRouteData.$location(
        '/home/reportQuestion',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
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

extension $ProfileRegisterRouteDataExtension on ProfileRegisterRouteData {
  static ProfileRegisterRouteData _fromState(GoRouterState state) =>
      ProfileRegisterRouteData(
        redirectUrl: state.uri.queryParameters['redirect-url'],
      );

  String get location => GoRouteData.$location(
        '/profile/login/register',
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

extension $ResetPasswordRouteDataExtension on ResetPasswordRouteData {
  static ResetPasswordRouteData _fromState(GoRouterState state) =>
      const ResetPasswordRouteData();

  String get location => GoRouteData.$location(
        '/profile/login/resetPassword',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChangePasswordRouteDataExtension on ChangePasswordRouteData {
  static ChangePasswordRouteData _fromState(GoRouterState state) =>
      const ChangePasswordRouteData();

  String get location => GoRouteData.$location(
        '/profile/changePassword',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $EditProfileRouteDataExtension on EditProfileRouteData {
  static EditProfileRouteData _fromState(GoRouterState state) =>
      const EditProfileRouteData();

  String get location => GoRouteData.$location(
        '/profile/editprofile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
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
