import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';

import '../../../gen/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../utilities/request_login.dart';
import '../../theme/theme.dart';
import '../app_icon_button.dart';
// import '../quick_access_Icon_button/quick_access_icon_button.dart';

class MainAppBar extends ImplicitlyAnimatedWidget
    implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    required this.currentMainTabIndex,
    this.backgroundColor,
  }) : super(duration: animationDuration, curve: Curves.easeIn);

  final int currentMainTabIndex;
  final Color? backgroundColor;

  static const height = 66.0;
  static const animationDuration = Duration(milliseconds: 300);

  @override
  ImplicitlyAnimatedWidgetState<MainAppBar> createState() => _MainAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(height);
}

class _MainAppBarState extends AnimatedWidgetBaseState<MainAppBar> {
  ColorTween? _color;

  void navigateToNotification(BuildContext context) {
    // const NotificationRoute().push(context);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: _color?.evaluate(animation),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      child: Container(
        padding: Platform.isAndroid
            ? EdgeInsets.zero
            : EdgeInsets.only(top: MediaQuery.of(context).padding.top - 10),
        color: _color?.evaluate(animation),
        child: AppBar(
          leadingWidth: 50,
          scrolledUnderElevation: 0.0,
          toolbarHeight: MainAppBar.height,
          primary: Platform.isAndroid,
          // leading: Container(
          //   alignment: Alignment.centerRight,
          //   child: QuickAccessIconButton(
          //     onTap: () {
          //       Scaffold.of(context).openDrawer();
          //     },
          //     icon: Assets.svgs.drawerIcon.svg(),
          //   ),
          // ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: AppIconButton(
                onTap: () async {
                  final isLoggedIn = await requestLoginAction(context);
                  if (!context.mounted) {
                    return;
                  }
                  if (isLoggedIn) {
                    const NotificationRouteData().push(context);
                  }
                },
                icon: Assets.svgs.appBarBellIcon.svg(
                  color: AppColors.blue.shade600,
                ),
              ),
            ),
          ],
          elevation: 0,
          backgroundColor: _color?.evaluate(animation),
          surfaceTintColor: Colors.transparent,
          centerTitle: true,
          title: GestureDetector(
            onTap: () => const HomeRouteData().go(context),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(Assets.images.homeLogo.homeLogo.path),
                const SizedBox(height: 4),
                Text(
                  'Better Life, Better Future',
                  style: Styles.s10().withLetterSpacing(-2.5 / 100).withColor(
                        AppColors.text.common,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _color = visitor(_color, widget.backgroundColor,
        (dynamic value) => ColorTween(begin: value as Color)) as ColorTween?;
  }
}
