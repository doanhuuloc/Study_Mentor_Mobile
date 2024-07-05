import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/application/services/user/user.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';

import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../../shared/handlers/loading_handler/loading_manager.dart';
import '../../../shared/widgets/app_bar/common_app_bar.dart';
import 'bloc/change_password_cubit.dart';
import 'bloc/change_password_state.dart';
import 'widgets/change_password_form_section.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChangePasswordCubit>(
      create: (BuildContext context) {
        return ChangePasswordCubit(
          loadingManager: context.read<LoadingManager>(),
          failureHandlerManager: context.read<FailureHandlerManager>(),
          userController: context.read<UserController>(),
        );
      },
      child: BlocListener<ChangePasswordCubit, ChangePasswordState>(
        listenWhen: (prev, curr) {
          return prev.changePasswordFlowCompleted !=
              curr.changePasswordFlowCompleted;
        },
        listener: (BuildContext context, ChangePasswordState state) {
          if (state.changePasswordFlowCompleted && context.mounted) {
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
                    alignment: Alignment.center,
                    height: constraints.maxHeight * 0.25,
                    child: Text(
                      S.of(context).changePassword,
                      style: Styles.s24().withWeight(FontWeight.bold),
                    ),
                  ),
                  const ChangePasswordFormSection(),
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
