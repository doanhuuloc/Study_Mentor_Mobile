import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bases/auth_cubit/auth_cubit.dart';
import '../../../gen/app_colors.dart';
import '../../../router/router_config/router_config.dart';
import '../../../shared/theme/src/app_style.dart';
import '../../../shared/widgets/gap_items.dart';
import '../../../shared/widgets/item_divider.dart';
import '../../../utilities/request_login.dart';

class ActivitiesSection extends StatelessWidget {
  const ActivitiesSection({super.key});

  static TextStyle styleTitle = Styles.s15()
      .withWeight(FontWeight.w500)
      .withLetterSpacing(-2.5 / 100)
      .withColor(AppColors.text.main);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GapItems(items: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
            child: Text(
              "Tài khoản",
              style: styleTitle,
            ),
          ),
          _ItemActivity(
            title: "Thay đổi thông tin cá nhân",
            onTap: () async {
              final isLoggedIn = await requestLoginAction(context);
              if (!context.mounted) {
                return;
              }
              if (isLoggedIn) {
                const EditProfileRouteData().push(context);
              }
            },
          ),
          _ItemActivity(
            title: "Thay đổi mật khẩu",
            onTap: () async {
              final isLoggedIn = await requestLoginAction(context);
              if (!context.mounted) {
                return;
              }
              if (isLoggedIn) {}
            },
          ),
        ], gap: 0),
        const ItemDivider(
          padding: EdgeInsets.symmetric(vertical: 16),
          thickness: 4,
        ),
        GapItems(items: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
            child: Text(
              "Cài đặt",
              style: styleTitle,
            ),
          ),
          _ItemActivity(
            title: "Ngôn ngữ",
            onTap: () async {
              final isLoggedIn = await requestLoginAction(context);
              if (!context.mounted) {
                return;
              }
              if (isLoggedIn) {}
            },
          ),
          _ItemActivity(
            title: "Thông báo",
            onTap: () async {
              final isLoggedIn = await requestLoginAction(context);
              if (!context.mounted) {
                return;
              }
              if (isLoggedIn) {}
            },
          ),
          _ItemActivity(
            title: "Chế độ bóng đêm",
            onTap: () async {
              final isLoggedIn = await requestLoginAction(context);
              if (!context.mounted) {
                return;
              }
              if (isLoggedIn) {}
            },
          ),
        ], gap: 0),
        const ItemDivider(
          padding: EdgeInsets.symmetric(vertical: 16),
          thickness: 4,
        ),
        GapItems(
          items: [
            _ItemActivity(
              title: "Đăng xuất",
              textColor: AppColors.red,
              onTap: () async {
                final isLoggedIn = await requestLoginAction(context);
                if (!context.mounted) {
                  return;
                }
                if (isLoggedIn) {
                  context.read<AuthCubit>().logout();
                }
              },
            ),
          ],
          gap: 0,
        )
      ],
    );
  }
}

class _ItemActivity extends StatelessWidget {
  const _ItemActivity({
    required this.title,
    this.onTap,
    this.textColor,
  });

  final String title;
  final VoidCallback? onTap;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
          child: Row(
            children: [
              Text(
                title,
                style: Styles.s15()
                    .withHeight(24 / 15)
                    .withLetterSpacing(-2.5 / 100)
                    .withColor(textColor ?? AppColors.text.main),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
