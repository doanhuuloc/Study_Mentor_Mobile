import 'dart:async';

import 'package:equatable/equatable.dart';

import '../../../application/services/user/user.dart';
import '../../../utilities/api_status/api_status.dart';
import '../bloc_utils/safe_cubit/safe_cubit.dart';
import '../session_cubit/session_cubit.dart';
import '../socket_cubit/socket_cubit.dart';

part 'user_state.dart';

class UserCubit extends SafeCubit<UserState> {
  UserCubit({
    required this.userController,
    required this.sessionCubit,
    required this.socketCubit,
  }) : super(const UserState()) {
    _sessionSubscription = sessionCubit.stream.listen((state) {
      switch (state.status) {
        case SessionStatus.started:
          fetchUserData();
          break;
        case SessionStatus.expired:
          break;
      }
    });
  }

  StreamSubscription<SessionState>? _sessionSubscription;
  final SessionCubit sessionCubit;
  final UserController userController;
  final SocketCubit socketCubit;

  Future<void> fetchUserData() async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));
    final getUserInfoResult = await userController.getUserInfo();

    getUserInfoResult.handleRight((value) {
      emit(state.copyWith(
        detail: value.data,
        apiStatus: ApiStatus.success,
      ));
      socketCubit.connect(userId: value.data.id ?? "");
    });

    getUserInfoResult.handleLeft((value) {
      emit(state.copyWith(apiStatus: ApiStatus.fail));
    });
  }

  void setUserData(UserInfoResponse userDetail) {
    emit(state.copyWith(apiStatus: ApiStatus.success, detail: userDetail));
  }

  void setFcmToken(String? fcmToken) {
    emit(state.copyWith(fcmToken: fcmToken));
  }

  void setMemberShip() {
    emit(state.copyWith(detail: state.detail?.copyWith(isMembership: true)));
  }

  @override
  Future<void> close() async {
    await _sessionSubscription?.cancel();
    return super.close();
  }
}
