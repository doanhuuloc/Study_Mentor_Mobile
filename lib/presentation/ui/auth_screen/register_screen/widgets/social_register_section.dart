import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/ui/auth_screen/register_screen/bloc/register_cubit.dart';

import '../../../../../application/services/auth/auth.dart';
import '../../../../bases/user_cubit/user_cubit.dart';
import '../../../../gen/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../shared/theme/src/app_style.dart';

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
              child: Text(S.of(context).socialAccountRegister,
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
            _SocialRegiter(
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
                  context.read<RegisterCubit>().onLoginWithGoogle(
                        LoginWithGoogleRequest(
                            email: auth2.user?.email,
                            fullName: auth2.user?.displayName,
                            fcmToken: context.read<UserCubit>().state.fcmToken),
                      );
                } catch (err) {}
              },
            ),
            const SizedBox(width: 16),
          ],
        ),
      ],
    );
  }
}

class _SocialRegiter extends StatelessWidget {
  const _SocialRegiter({required this.icon, required this.onTap});

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
