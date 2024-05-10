class BaseResponse<T> {
  const BaseResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  final bool success;
  final String message;
  final T data;
}
