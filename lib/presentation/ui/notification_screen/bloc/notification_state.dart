import '../../../../application/services/user/user.dart';

class NotificationState {
  const NotificationState({
    this.notifications = const [],
    this.loading = false,
  });

  final List<MyNotificationResponse> notifications;
  final bool loading;

  NotificationState copyWith({
    List<MyNotificationResponse>? notifications,
    bool? loading,
  }) {
    return NotificationState(
      notifications: notifications ?? this.notifications,
      loading: loading ?? this.loading,
    );
  }
}
