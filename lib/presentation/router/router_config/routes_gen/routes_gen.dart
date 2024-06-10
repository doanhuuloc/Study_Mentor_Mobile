import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../application/services/ai/dto/enum.dart';
import '../../../shared/base_infinite_loading/example.dart';
import '../../../shared/widgets/dialogs/dialogs.dart';
import '../../../shared/widgets/drop_down_bar/drop_down_bar.dart';
import '../../../shared/widgets/drop_down_bar/widgets/drop_down_sheet.dart';
import '../../../shared/widgets/image_picker_sheet/image_picker_sheet.dart';
import '../../../ui/main_screen/main_screen.dart';
import '../../../ui/splash_screen/splash_screen.dart';
import '../../app_nav_key/app_nav_key.dart';
import '../routes/routes.dart';

part 'routes_gen.g.dart';

@TypedGoRoute<SplashRoute>(
  path: SplashRoute.routeName,
)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  static const routeName = '/splash';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SplashScreen.buildPage(context, state);
  }
}

@TypedGoRoute<AlertRouteData>(
  path: AlertRouteData.routeName,
)
class AlertRouteData extends GoRouteData {
  const AlertRouteData({
    this.title,
    required this.content,
    this.acceptTitle,
  });

  static const routeName = '/alert';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  final String? title;
  final String content;
  final String? acceptTitle;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return AppAlertDialog.buildPage(
      context,
      key: state.pageKey,
      content: content,
      acceptTitle: acceptTitle,
      title: title,
    );
  }
}

@TypedGoRoute<ConfirmRouteData>(
  path: ConfirmRouteData.routeName,
)
class ConfirmRouteData extends GoRouteData {
  const ConfirmRouteData({
    this.title,
    required this.content,
    this.acceptTitle,
    this.rejectTitle,
  });

  static const routeName = '/confirm';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  final String? title;
  final String content;
  final String? acceptTitle;
  final String? rejectTitle;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return AppConfirmDialog.buildPage(
      context,
      key: state.pageKey,
      content: content,
      acceptTitle: acceptTitle,
      title: title,
      rejectTitle: rejectTitle,
    );
  }
}

@TypedGoRoute<ImagePickerRouteData>(
  path: ImagePickerRouteData.routeName,
)
class ImagePickerRouteData extends GoRouteData {
  const ImagePickerRouteData();

  static const routeName = '/image-picker';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return ImagePickerSheet.buildPage(
      context,
      key: state.pageKey,
    );
  }
}

@TypedGoRoute<DropdownSheetRouteData>(
  path: DropdownSheetRouteData.routeName,
)
class DropdownSheetRouteData extends GoRouteData {
  const DropdownSheetRouteData({this.$extra = const []});

  final List<DropDownBarData<dynamic>> $extra;

  static const routeName = '/dropdown-sheet';
  static final GlobalKey<NavigatorState> $parentNavigatorKey = AppNavKey.root;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return DropdownSheet.buildPage(
      context,
      key: state.pageKey,
      items: $extra,
    );
  }
}

@TypedShellRoute<MainShellRouteData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRouteData>(
      path: HomeRouteData.routeName,
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<CreateQuestionRouteData>(
          path: CreateQuestionRouteData.routeName,
          routes: <TypedRoute<RouteData>>[
            TypedGoRoute<FindIntrustorRouteData>(
              path: FindIntrustorRouteData.routeName,
            ),
            TypedGoRoute<FindingIntrustorRouteData>(
              path: FindingIntrustorRouteData.routeName,
            ),
            TypedGoRoute<IntrustorAnswerRouteData>(
              path: IntrustorAnswerRouteData.routeName,
            ),
            TypedGoRoute<IntrustorInfoRouteData>(
              path: IntrustorInfoRouteData.routeName,
            ),
          ],
        ),
        TypedGoRoute<ChatAIRouteData>(
          path: ChatAIRouteData.routeName,
        ),
        TypedGoRoute<ChatIntrustorRouteData>(
          path: ChatIntrustorRouteData.routeName,
        ),
        TypedGoRoute<HomeLoginRouteData>(
          path: HomeLoginRouteData.routeName,
        ),
        TypedGoRoute<CreateGGMeetRouteData>(
          path: CreateGGMeetRouteData.routeName,
        ),
      ],
    ),
    TypedGoRoute<HistoryRouteData>(
      path: HistoryRouteData.routeName,
    ),
    TypedGoRoute<ProfileRouteData>(
      path: ProfileRouteData.routeName,
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<ProfileLoginRouteData>(
            path: ProfileLoginRouteData.routeName,
            routes: [
              TypedGoRoute<RegisterRouteData>(
                  path: RegisterRouteData.routeName),
            ]),
        TypedGoRoute<EditProfileRouteData>(
          path: EditProfileRouteData.routeName,
        ),
      ],
    ),
  ],
)
class MainShellRouteData extends ShellRouteData {
  const MainShellRouteData();

  @override
  Page<void> pageBuilder(
      BuildContext context, GoRouterState state, Widget navigator) {
    return MainScreen.buildPage(context, state, navigator);
  }
}

@TypedGoRoute<TestLoadingRouteData>(
  path: TestLoadingRouteData.routeName,
)
class TestLoadingRouteData extends GoRouteData {
  const TestLoadingRouteData();

  static const routeName = '/test-infinite-loading';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TestInfiniteLoadingScreen();
  }
}
