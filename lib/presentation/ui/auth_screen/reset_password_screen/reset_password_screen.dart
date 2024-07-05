import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/application/services/user/user.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';

import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../shared/handlers/loading_handler/loading_manager.dart';
import '../../../shared/transitions/transitions.dart';
import '../../../shared/widgets/app_bar/common_app_bar.dart';
import 'bloc/reset_password_cubit.dart';
import 'bloc/reset_password_state.dart';
import 'widgets/reset_password_form_section.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({
    super.key,
  });

  static Page<void> buildPage(BuildContext context, GoRouterState state,
      {String? redirectUrl}) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: const ResetPasswordScreen(),
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
    return BlocProvider<ResetPasswordCubit>(
      create: (BuildContext context) {
        return ResetPasswordCubit(
          loadingManager: context.read<LoadingManager>(),
          failureHandlerManager: context.read<FailureHandlerManager>(),
          userController: context.read<UserController>(),
        );
      },
      child: BlocListener<ResetPasswordCubit, ResetPasswordState>(
        listenWhen: (prev, curr) {
          return prev.resetPasswordFlowCompleted !=
              curr.resetPasswordFlowCompleted;
        },
        listener: (BuildContext context, ResetPasswordState state) {
          if (state.resetPasswordFlowCompleted && context.mounted) {
            context.pop();
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
                    height: constraints.maxHeight * 0.25,
                    alignment: Alignment.center,
                    child: Text(
                      S.of(context).resetPassword,
                      style: Styles.s24().withWeight(FontWeight.bold),
                    ),
                  ),
                  const ResetPasswordFormSection(),
                  SizedBox(
                    height: constraints.maxHeight * 0.2,
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
