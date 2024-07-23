import 'dart:io' show Platform;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:study_mentor_mobile/application/services/auth/auth.dart';
import 'package:study_mentor_mobile/presentation/bases/user_cubit/user_cubit.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';

import '../../../../../utilities/logging/logging.dart';
import '../../../../gen/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../shared/theme/src/app_style.dart';
import '../bloc/login_cubit.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    final divider = Expanded(
      child: Divider(
        color: AppColors.gray.shade300,
        height: 1,
        thickness: 1,
      ),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            divider,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.5),
              child: Text(S.of(context).socialAccountLogin,
                  style: Styles.s13()
                      .withColor(AppColors.text.bodyText)
                      .withLetterSpacing(-2.5 / 100)),
            ),
            divider,
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _SocialLogin(
              icon: Assets.svgs.googleIcon.svg(),
              onTap: () async {
                try {
                  final GoogleSignIn googleSignIn = GoogleSignIn();
                  if (await googleSignIn.isSignedIn()) {
                    await googleSignIn.disconnect();
                  }

                  final GoogleSignInAccount? googleUser =
                      await googleSignIn.signIn();

                  final GoogleSignInAuthentication? googleAuth =
                      await googleUser?.authentication;

                  final credential = GoogleAuthProvider.credential(
                    accessToken: googleAuth?.accessToken,
                    idToken: googleAuth?.idToken,
                  );
                  final auth2 = await FirebaseAuth.instance
                      .signInWithCredential(credential);

                  final idToken = await auth2.user?.getIdToken();

                  if (!context.mounted || idToken == null) {
                    return;
                  }
                  context.read<LoginCubit>().onLoginWithGoogle(
                        LoginWithGoogleRequest(
                            email: auth2.user?.email,
                            fullName: auth2.user?.displayName,
                            fcmToken: context.read<UserCubit>().state.fcmToken),
                      );
                } catch (err) {
                  logging.e(err);
                }
              },
            ),
            if (Platform.isIOS) const SizedBox(width: 16),
            if (Platform.isIOS)
              _SocialLogin(
                  icon: Assets.svgs.appleIcon.svg(),
                  onTap: () async {
                    try {
                      final AuthorizationCredentialAppleID credential =
                          await SignInWithApple.getAppleIDCredential(
                        scopes: [
                          AppleIDAuthorizationScopes.email,
                          AppleIDAuthorizationScopes.fullName,
                        ],
                      );
                      if (!context.mounted &&
                          credential.identityToken == null) {
                        return;
                      }
                      // context
                      //     .read<LoginCubit>()
                      //     .onLoginWithApple(credential.identityToken!);
                    } catch (e) {
                      logging.e(e);
                    }
                  }),
            const SizedBox(width: 16),
          ],
        ),
      ],
    );
  }
}

class _SocialLogin extends StatelessWidget {
  const _SocialLogin({required this.icon, required this.onTap});

  final Widget icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FittedBox(
          child: SizedBox(
            width: 48,
            height: 48,
            child: icon,
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              customBorder: const CircleBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
