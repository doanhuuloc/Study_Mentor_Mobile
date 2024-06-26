import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/bases/user_cubit/user_cubit.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';

import '../../../bases/auth_cubit/auth_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../shared/handlers/loading_handler/loading_manager.dart';
import '../../../shared/transitions/transitions.dart';
import '../../../shared/widgets/app_bar/common_app_bar.dart';
import 'bloc/register_cubit.dart';
import 'bloc/register_state.dart';
import 'widgets/register_form_section.dart';
import 'widgets/social_register_section.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    super.key,
    this.redirectUrl,
  });

  final String? redirectUrl;

  static const logoFraction = 0.25;
  static const formSection = 0.3;
  static const social = 0.2;

  static Page<void> buildPage(BuildContext context, GoRouterState state,
      {String? redirectUrl}) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: RegisterScreen(
        redirectUrl: redirectUrl,
      ),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return CustomTransitionBuilder.slideFromBottomTransition(
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
    return BlocProvider<RegisterCubit>(
      create: (BuildContext context) {
        return RegisterCubit(
          redirectUrl: redirectUrl,
          loadingManager: context.read<LoadingManager>(),
          failureHandlerManager: context.read<FailureHandlerManager>(),
          authCubit: context.read<AuthCubit>(),
          userCubit: context.read<UserCubit>(),
        );
      },
      child: BlocListener<RegisterCubit, RegisterState>(
        listenWhen: (prev, curr) {
          return prev.loginFlowCompleted != curr.loginFlowCompleted;
        },
        listener: (BuildContext context, RegisterState state) {
          if (state.loginFlowCompleted && context.mounted) {
            const ProfileRouteData().go(context);
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: const CommonAppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: constraints.maxHeight * logoFraction,
                    alignment: Alignment.center,
                    child: Text(
                      "Register your account",
                      style: Styles.s24().withWeight(FontWeight.bold),
                    ),
                  ),
                  const RegisterFormSection(),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: constraints.maxHeight * social,
                    child: const SocialLoginSection(),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
