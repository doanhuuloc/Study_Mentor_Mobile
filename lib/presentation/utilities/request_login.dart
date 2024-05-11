import 'package:flutter/cupertino.dart';

Future<bool> requestLoginAction(
  BuildContext context, {
  String? requestTitle,
}) async {
  // final authCubit = context.read<AuthCubit>();
  // final isLoggedIn = authCubit.state is AuthStatusLoggedInState;
  // if (isLoggedIn) {
  //   return true;
  // }
  // final bool checked = await ConfirmRouteData(
  //       content: requestTitle ??
  //           S.of(context).pleaseLoginToViewRegisteredInformation,
  //       acceptTitle: S.of(context).ok,
  //       rejectTitle: S.of(context).cancel,
  //     ).push<bool>(context) ??
  //     false;

  // if (!context.mounted || !checked) {
  //   return false;
  // }

  // final bool isSuccessLogin =
  //     await const HomeLoginRouteData().push<bool>(context) ?? false;
  return true;
}
