part of 'bootstrap_cubit.dart';

class BootstrapState extends Equatable {
  const BootstrapState({
    this.username,
    this.initialUrl,
  });

  final String? initialUrl;
  final String? username;

  @override
  List<Object?> get props => [
        username,
        initialUrl,
      ];

  BootstrapState copyWith({
    String? initialUrl,
    String? username,
  }) {
    return BootstrapState(
      initialUrl: initialUrl ?? this.initialUrl,
      username: username ?? this.username,
    );
  }
}
