// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'base_response.dart';

class BaseResponseMapper extends ClassMapperBase<BaseResponse> {
  BaseResponseMapper._();

  static BaseResponseMapper? _instance;
  static BaseResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BaseResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BaseResponse';
  @override
  Function get typeFactory => <T>(f) => f<BaseResponse<T>>();

  static bool? _$success(BaseResponse v) => v.success;
  static const Field<BaseResponse, bool> _f$success =
      Field('success', _$success, opt: true);
  static String? _$message(BaseResponse v) => v.message;
  static const Field<BaseResponse, String> _f$message =
      Field('message', _$message, opt: true);
  static dynamic _$data(BaseResponse v) => v.data;
  static dynamic _arg$data<T>(f) => f<T>();
  static const Field<BaseResponse, dynamic> _f$data =
      Field('data', _$data, arg: _arg$data);

  @override
  final MappableFields<BaseResponse> fields = const {
    #success: _f$success,
    #message: _f$message,
    #data: _f$data,
  };

  static BaseResponse<T> _instantiate<T>(DecodingData data) {
    return BaseResponse(
        success: data.dec(_f$success),
        message: data.dec(_f$message),
        data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static BaseResponse<T> fromJson<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BaseResponse<T>>(map);
  }

  static BaseResponse<T> fromJsonString<T>(String json) {
    return ensureInitialized().decodeJson<BaseResponse<T>>(json);
  }
}

mixin BaseResponseMappable<T> {
  String toJsonString() {
    return BaseResponseMapper.ensureInitialized()
        .encodeJson<BaseResponse<T>>(this as BaseResponse<T>);
  }

  Map<String, dynamic> toJson() {
    return BaseResponseMapper.ensureInitialized()
        .encodeMap<BaseResponse<T>>(this as BaseResponse<T>);
  }

  BaseResponseCopyWith<BaseResponse<T>, BaseResponse<T>, BaseResponse<T>, T>
      get copyWith => _BaseResponseCopyWithImpl(
          this as BaseResponse<T>, $identity, $identity);
  @override
  String toString() {
    return BaseResponseMapper.ensureInitialized()
        .stringifyValue(this as BaseResponse<T>);
  }

  @override
  bool operator ==(Object other) {
    return BaseResponseMapper.ensureInitialized()
        .equalsValue(this as BaseResponse<T>, other);
  }

  @override
  int get hashCode {
    return BaseResponseMapper.ensureInitialized()
        .hashValue(this as BaseResponse<T>);
  }
}

extension BaseResponseValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, BaseResponse<T>, $Out> {
  BaseResponseCopyWith<$R, BaseResponse<T>, $Out, T> get $asBaseResponse =>
      $base.as((v, t, t2) => _BaseResponseCopyWithImpl(v, t, t2));
}

abstract class BaseResponseCopyWith<$R, $In extends BaseResponse<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? success, String? message, T? data});
  BaseResponseCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BaseResponseCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, BaseResponse<T>, $Out>
    implements BaseResponseCopyWith<$R, BaseResponse<T>, $Out, T> {
  _BaseResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BaseResponse> $mapper =
      BaseResponseMapper.ensureInitialized();
  @override
  $R call({Object? success = $none, Object? message = $none, T? data}) =>
      $apply(FieldCopyWithData({
        if (success != $none) #success: success,
        if (message != $none) #message: message,
        if (data != null) #data: data
      }));
  @override
  BaseResponse<T> $make(CopyWithData data) => BaseResponse(
      success: data.get(#success, or: $value.success),
      message: data.get(#message, or: $value.message),
      data: data.get(#data, or: $value.data));

  @override
  BaseResponseCopyWith<$R2, BaseResponse<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BaseResponseCopyWithImpl($value, $cast, t);
}
