import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/drop_down_bar/drop_down_bar.dart';

import '../../../../bases/auth_cubit/auth_cubit.dart';
import '../../../../gen/app_colors.dart';
import '../../../../router/router_config/router_config.dart';
import '../../../../shared/theme/src/app_style.dart';
import '../../../../shared/widgets/gap_items.dart';
import '../../../../shared/widgets/item_divider.dart';
import '../../../../utilities/request_login.dart';

class ActivitiesSection extends StatefulWidget {
  const ActivitiesSection({super.key});

  static TextStyle styleTitle = Styles.s15()
      .withWeight(FontWeight.w500)
      .withLetterSpacing(-2.5 / 100)
      .withColor(AppColors.text.main);

  @override
  State<ActivitiesSection> createState() => _ActivitiesSectionState();
}

class _ActivitiesSectionState extends State<ActivitiesSection> {
  String brightnessMode = "Sáng";
  String notifi = "Bật";
  String language = "Tiếng Việt";

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
              style: ActivitiesSection.styleTitle,
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
              if (isLoggedIn) {
                const ChangePasswordRouteData().push(context);
              }
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
              style: ActivitiesSection.styleTitle,
            ),
          ),
          _ItemActivity(
            title: "Ngôn ngữ",
            content: language,
            onTap: () async {
              final isLoggedIn = await requestLoginAction(context);
              if (!context.mounted) {
                return;
              }
              if (isLoggedIn) {
                final selected = await const DropdownSheetRouteData($extra: [
                  DropDownBarData(value: 0, title: "Tiếng Việt"),
                  DropDownBarData(value: 1, title: "English"),
                ]).push(context);

                if (selected == 0) {
                  language = "Tiếng Việt";
                } else {
                  language = "English";
                }
                setState(() {});
              }
            },
          ),
          _ItemActivity(
            title: "Thông báo",
            content: notifi,
            onTap: () async {
              final isLoggedIn = await requestLoginAction(context);
              if (!context.mounted) {
                return;
              }
              if (isLoggedIn) {
                final selected = await const DropdownSheetRouteData($extra: [
                  DropDownBarData(value: 0, title: "Bật"),
                  DropDownBarData(value: 1, title: "Tắt"),
                ]).push(context);

                if (selected == 0) {
                  notifi = "Bật";
                } else {
                  notifi = "Tắt";
                }
                setState(() {});
              }
            },
          ),
          _ItemActivity(
            title: "Chế độ sáng",
            content: brightnessMode,
            onTap: () async {
              final isLoggedIn = await requestLoginAction(context);
              if (!context.mounted) {
                return;
              }
              if (isLoggedIn) {
                final selected = await const DropdownSheetRouteData($extra: [
                  DropDownBarData(value: 0, title: "Sáng"),
                  DropDownBarData(value: 1, title: "Tối"),
                ]).push(context);

                if (selected == 0) {
                  brightnessMode = "Sáng";
                } else {
                  brightnessMode = "Tối";
                }
                setState(() {});
              }
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
    this.content,
    this.onTap,
    this.textColor,
  });

  final String title;
  final String? content;
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Styles.s15()
                    .withHeight(24 / 15)
                    .withLetterSpacing(-2.5 / 100)
                    .withColor(textColor ?? AppColors.text.main),
              ),
              if (content != null)
                Row(
                  children: [
                    Text(
                      content ?? "",
                      style: Styles.s15()
                          .withHeight(24 / 15)
                          .withLetterSpacing(-2.5 / 100)
                          .withColor(textColor ?? AppColors.text.main),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
