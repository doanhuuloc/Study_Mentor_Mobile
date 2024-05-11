import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../application/services/app/app_data/app_term_and_cond_status_service.dart';
import '../../../application/services/app/app_data/app_username_service.dart';
import '../../../application/services/app/locale_service/locale_service.dart';
import '../../../application/services/app/token_service/refresh_token_manager.dart';
import '../../../application/services/app/token_service/token_service.dart';
import '../../../application/services/auth/controller/controller.dart';
import '../../../application/services/user/user.dart';
import '../../bases/auth_cubit/auth_cubit.dart';
import '../../bases/bootstrap_cubit/bootstrap_cubit.dart';
import '../../bases/childless_assertion/childless_assertion.dart';
import '../../bases/locale_cubit/locale_cubit.dart';
import '../../bases/session_cubit/session_cubit.dart';
import '../../bases/user_cubit/user_cubit.dart';

class BlocInject extends SingleChildStatelessWidget with ChildlessAssertion {
  const BlocInject({super.key});

  @override
  Widget buildWithNoneNullChild(BuildContext context, Widget child) {
    return Nested(
      children: [
        BlocProvider<SessionCubit>(
          lazy: false,
          create: (context) {
            return SessionCubit(tokenService: context.read<TokenService>());
          },
        ),
        BlocProvider<UserCubit>(
          lazy: false,
          create: (context) {
            return UserCubit(
              userController: context.read<UserController>(),
              sessionCubit: context.read<SessionCubit>(),
            );
          },
        ),
        BlocProvider<AuthCubit>(
          lazy: false,
          create: (context) {
            return AuthCubit(
              refreshTokenManager: context.read<RefreshTokenManager>(),
              tokenService: context.read<TokenService>(),
              userController: context.read<UserController>(),
              sessionCubit: context.read<SessionCubit>(),
              userCubit: context.read<UserCubit>(),
              authController: context.read<AuthController>(),
            );
          },
        ),
        BlocProvider<LocaleCubit>(
          lazy: false,
          create: (context) {
            return LocaleCubit(localeService: context.read<LocaleService>());
          },
        ),
        BlocProvider<BootstrapCubit>(
          lazy: false,
          create: (context) {
            return BootstrapCubit(
              appUsernameService: context.read<AppUsernameService>(),
              authCubit: context.read<AuthCubit>(),
              localeCubit: context.read<LocaleCubit>(),
              localeService: context.read<LocaleService>(),
            );
          },
        ),
      ],
      child: child,
    );
  }
}
