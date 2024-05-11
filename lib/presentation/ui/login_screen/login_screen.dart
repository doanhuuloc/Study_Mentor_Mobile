import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../bases/auth_cubit/auth_cubit.dart';
import '../../gen/assets.gen.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../shared/handlers/loading_handler/loading_manager.dart';
import '../../shared/transitions/transitions.dart';
import '../../shared/widgets/app_bar/common_app_bar.dart';
import 'bloc/login_cubit.dart';
import 'bloc/login_state.dart';
import 'widgets/login_form_section.dart';
import 'widgets/social_login_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
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
      child: LoginScreen(
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
    return BlocProvider<LoginCubit>(
      create: (BuildContext context) {
        return LoginCubit(
          redirectUrl: redirectUrl,
          loadingManager: context.read<LoadingManager>(),
          failureHandlerManager: context.read<FailureHandlerManager>(),
          authCubit: context.read<AuthCubit>(),
        );
      },
      child: BlocListener<LoginCubit, LoginState>(
        listenWhen: (prev, curr) {
          return prev.loginFlowCompleted != curr.loginFlowCompleted;
        },
        listener: (BuildContext context, LoginState state) {
          if (state.loginFlowCompleted && context.mounted) {
            context.pop(true);
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: CommonAppBar(
            closeIcon: Assets.svgs.appBarCloseIcon.svg(),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: constraints.maxHeight * logoFraction,
                    alignment: Alignment.center,
                    child: Assets.images.homeLogo.homeLogo.image(),
                  ),
                  const LoginFormSection(),
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
