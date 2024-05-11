import 'package:dio/dio.dart';

class DioInterceptorManager {
  Dio? _dio;
  InterceptorsWrapper? _interceptors;

  Dio get dioInstance {
    _dio ??= Dio(BaseOptions(
      validateStatus: (status) => status != null && status < 500,
    ));
    return _dio!;
  }

  // InterceptorsWrapper get interceptors {
  //   _interceptors = InterceptorsWrapper(
  //     onRequest: (options, handler) {
  //       return handler.next(options);
  //     },
  //     onError: (DioException e, ErrorInterceptorHandler handler) {
  //       return handler.resolve(e.response!);
  //     },
  //     onResponse: (response, handler) {
  //       return handler.next(response);
  //     },
  //   );
  //   return _interceptors!;
  // }
}
