import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bases/user_cubit/user_cubit.dart';
import '../../../shared/transitions/transitions.dart';
import '../../../shared/widgets/app_bar/common_app_bar.dart';
import '../../../shared/widgets/item_divider.dart';
import 'widgets/activity_section.dart';
import 'widgets/header_profile_seaction.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: const ProfileScreen(),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return CustomTransitionBuilder.noTransition(
          context,
          animation,
          secondaryAnimation,
          child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<UserCubit>().fetchUserData();
        },
        child: const SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              HeaderProfileSection(),
              ItemDivider(
                padding: EdgeInsets.symmetric(vertical: 16),
                thickness: 4,
              ),
              ActivitiesSection(),
              SizedBox(height: 44),
            ],
          ),
        ),
      ),
    );
  }
}
