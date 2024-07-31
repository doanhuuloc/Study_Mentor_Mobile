import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/bases/locale_cubit/locale_cubit.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
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
  int theme = 0;
  int notifi = 0;

  String getNotifiName() {
    if (notifi == 0) {
      return S.of(context).turnOn;
    }
    if (notifi == 1) {
      return S.of(context).turnOff;
    }
    return S.of(context).turnOn;
  }

  String getThemeName() {
    if (theme == 0) {
      return S.of(context).light;
    }
    if (theme == 1) {
      return S.of(context).dark;
    }
    return S.of(context).light;
  }

  String getLocaleName(Locale locale) {
    if (locale.languageCode == "vi") {
      return S.of(context).vietnamese;
    }
    if (locale.languageCode == "en") {
      return S.of(context).english;
    }
    return S.of(context).vietnamese;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GapItems(items: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
            child: Text(
              S.of(context).account,
              style: ActivitiesSection.styleTitle,
            ),
          ),
          _ItemActivity(
            title: S.of(context).editProfile,
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
            title: "Tài khoản ngân hàng",
            onTap: () async {
              final isLoggedIn = await requestLoginAction(context);
              if (!context.mounted) {
                return;
              }
              if (isLoggedIn) {
                const BankAccountRouteData().push(context);
              }
            },
          ),
          _ItemActivity(
            title: S.of(context).changePassword,
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
              S.of(context).settings,
              style: ActivitiesSection.styleTitle,
            ),
          ),
          _ItemActivity(
            title: S.of(context).languages,
            content: getLocaleName(context.read<LocaleCubit>().state),
            onTap: () async {
              final Locale selected = await DropdownSheetRouteData(
                      $extra: S.supportedLocales
                          .map(
                            (locale) => DropDownBarData<Locale>(
                                value: locale, title: getLocaleName(locale)),
                          )
                          .toList())
                  .push(context);

              if (!context.mounted) {
                return;
              }

              context.read<LocaleCubit>().changeLocale(selected);
              setState(() {});
            },
          ),
          _ItemActivity(
            title: S.of(context).notification,
            content: getNotifiName(),
            onTap: () async {
              final isLoggedIn = await requestLoginAction(context);
              if (!context.mounted) {
                return;
              }
              if (isLoggedIn) {
                final selected = await DropdownSheetRouteData($extra: [
                  DropDownBarData(value: 0, title: S.of(context).turnOn),
                  DropDownBarData(value: 1, title: S.of(context).turnOff),
                ]).push(context);

                if (!context.mounted) {
                  return;
                }
                notifi = selected;

                setState(() {});
              }
            },
          ),
          _ItemActivity(
            title: S.of(context).theme,
            content: getThemeName(),
            onTap: () async {
              final isLoggedIn = await requestLoginAction(context);
              if (!context.mounted) {
                return;
              }
              if (isLoggedIn) {
                final selected = await DropdownSheetRouteData($extra: [
                  DropDownBarData(value: 0, title: S.of(context).light),
                  DropDownBarData(value: 1, title: S.of(context).dark),
                ]).push(context);

                if (!context.mounted) {
                  return;
                }

                theme = selected;
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
              title: S.of(context).logout,
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
