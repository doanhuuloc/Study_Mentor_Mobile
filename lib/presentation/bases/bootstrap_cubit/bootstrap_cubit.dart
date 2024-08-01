import 'dart:async';

import 'package:equatable/equatable.dart';

import '../../../application/services/app/app_data/app_username_service.dart';
import '../../../application/services/app/locale_service/locale_service.dart';
import '../auth_cubit/auth_cubit.dart';
import '../bloc_utils/safe_cubit/safe_cubit.dart';
import '../locale_cubit/locale_cubit.dart';

part 'bootstrap_state.dart';

class BootstrapCubit extends SafeCubit<BootstrapState> {
  BootstrapCubit({
    required this.localeCubit,
    required this.localeService,
    required this.authCubit,
    required this.appUsernameService,
  }) : super(
          const BootstrapState(),
        ) {
    _init();
  }

  final AuthCubit authCubit;
  final AppUsernameService appUsernameService;
  final LocaleService localeService;
  final LocaleCubit localeCubit;

  final Completer<String?> _deeplinkInitialLinkCompleter = Completer<String?>();
  final Completer<void> _splashScreenDurationCompleted = Completer<void>();
  final Completer<void> _assetsLoaderCompleted = Completer<void>();

  void initialDeeplinkReceived(String? uri) {
    _deeplinkInitialLinkCompleter.complete(uri);
  }

  void splashScreenDurationCompleted() {
    _splashScreenDurationCompleted.complete();
  }

  void assetLoadingCompleted() {
    _assetsLoaderCompleted.complete();
  }

  void _init() async {
    final oldUsernameFuture = appUsernameService.loadUsername();
    final loadLocaleFuture = localeService.loadLocale();
    await Future.wait([
      _assetsLoaderCompleted.future,
      loadLocaleFuture,
      _deeplinkInitialLinkCompleter.future,
      _splashScreenDurationCompleted.future,
      // haveReadTermAndCondFuture,
    ]);
    final initialLink = await _deeplinkInitialLinkCompleter.future;

    // bool haveReadTermAndCond = false;
    // (await haveReadTermAndCondFuture).handleRight((value) {
    //   haveReadTermAndCond = value;
    // });

    String? oldUsername;
    (await oldUsernameFuture).handleRight((value) {
      oldUsername = value;
    });

    final savedLocale = await loadLocaleFuture;
    savedLocale.handleRight((value) {
      localeCubit.bootstrapCompleted(value);
    });
    emit(BootstrapState(
      initialUrl: initialLink,
      username: oldUsername,
    ));
    authCubit.loginByRefreshToken(redirectUrl: initialLink ?? '/home');
  }
}
