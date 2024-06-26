import 'package:flutter/material.dart';

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
              child: Text("Social account register",
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
                // try {
                //   final GoogleSignInAccount? googleUser =
                //       await GoogleSignIn().signIn();

                //   final GoogleSignInAuthentication? googleAuth =
                //       await googleUser?.authentication;

                //   final credential = GoogleAuthProvider.credential(
                //     accessToken: googleAuth?.accessToken,
                //     idToken: googleAuth?.idToken,
                //   );
                //   final auth2 = await FirebaseAuth.instance
                //       .signInWithCredential(credential);

                //   final idToken = await auth2.user?.getIdToken();

                //   if (!context.mounted || idToken == null) {
                //     return;
                //   }
                //   context.read<LoginCubit>().onLoginWithGoogle(idToken);
                // } catch (err) {
                //   logging.e(err);
                // }
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
