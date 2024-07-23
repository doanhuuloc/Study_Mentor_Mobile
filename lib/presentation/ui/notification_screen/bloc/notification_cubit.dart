import '../../../../application/services/user/user.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'notification_state.dart';

class NotificationCubit extends SafeCubit<NotificationState> {
  NotificationCubit({
    required this.failureHandlerManager,
    required this.userController,
  }) : super(const NotificationState()) {
    getAllNotifications();
  }

  final FailureHandlerManager failureHandlerManager;
  final UserController userController;

  Future<void> getAllNotifications() async {
    emit(state.copyWith(loading: true));
    final response = await userController.getAllNotifications();
    if (response.isLeft) {
      failureHandlerManager.handle(response.left);
      emit(state.copyWith(loading: false));
    }

    if (response.isRight) {
      emit(state.copyWith(
        loading: false,
        notifications: response.right.data,
      ));
    }
  }
}
