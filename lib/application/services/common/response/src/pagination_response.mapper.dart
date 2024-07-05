// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pagination_response.dart';

class PaginationResponseMapper extends ClassMapperBase<PaginationResponse> {
  PaginationResponseMapper._();

  static PaginationResponseMapper? _instance;
  static PaginationResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaginationResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PaginationResponse';

  static int? _$page(PaginationResponse v) => v.page;
  static const Field<PaginationResponse, int> _f$page =
      Field('page', _$page, opt: true);
  static int? _$pageSize(PaginationResponse v) => v.pageSize;
  static const Field<PaginationResponse, int> _f$pageSize =
      Field('pageSize', _$pageSize, opt: true);
  static int? _$total(PaginationResponse v) => v.total;
  static const Field<PaginationResponse, int> _f$total =
      Field('total', _$total, opt: true);
  static int? _$totalPages(PaginationResponse v) => v.totalPages;
  static const Field<PaginationResponse, int> _f$totalPages =
      Field('totalPages', _$totalPages, opt: true);

  @override
  final MappableFields<PaginationResponse> fields = const {
    #page: _f$page,
    #pageSize: _f$pageSize,
    #total: _f$total,
    #totalPages: _f$totalPages,
  };

  static PaginationResponse _instantiate(DecodingData data) {
    return PaginationResponse(
        page: data.dec(_f$page),
        pageSize: data.dec(_f$pageSize),
        total: data.dec(_f$total),
        totalPages: data.dec(_f$totalPages));
  }

  @override
  final Function instantiate = _instantiate;

  static PaginationResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaginationResponse>(map);
  }

  static PaginationResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<PaginationResponse>(json);
  }
}

mixin PaginationResponseMappable {
  String toJsonString() {
    return PaginationResponseMapper.ensureInitialized()
        .encodeJson<PaginationResponse>(this as PaginationResponse);
  }

  Map<String, dynamic> toJson() {
    return PaginationResponseMapper.ensureInitialized()
        .encodeMap<PaginationResponse>(this as PaginationResponse);
  }

  PaginationResponseCopyWith<PaginationResponse, PaginationResponse,
          PaginationResponse>
      get copyWith => _PaginationResponseCopyWithImpl(
          this as PaginationResponse, $identity, $identity);
  @override
  String toString() {
    return PaginationResponseMapper.ensureInitialized()
        .stringifyValue(this as PaginationResponse);
  }

  @override
  bool operator ==(Object other) {
    return PaginationResponseMapper.ensureInitialized()
        .equalsValue(this as PaginationResponse, other);
  }

  @override
  int get hashCode {
    return PaginationResponseMapper.ensureInitialized()
        .hashValue(this as PaginationResponse);
  }
}

extension PaginationResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaginationResponse, $Out> {
  PaginationResponseCopyWith<$R, PaginationResponse, $Out>
      get $asPaginationResponse =>
          $base.as((v, t, t2) => _PaginationResponseCopyWithImpl(v, t, t2));
}

abstract class PaginationResponseCopyWith<$R, $In extends PaginationResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? page, int? pageSize, int? total, int? totalPages});
  PaginationResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PaginationResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaginationResponse, $Out>
    implements PaginationResponseCopyWith<$R, PaginationResponse, $Out> {
  _PaginationResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaginationResponse> $mapper =
      PaginationResponseMapper.ensureInitialized();
  @override
  $R call(
          {Object? page = $none,
          Object? pageSize = $none,
          Object? total = $none,
          Object? totalPages = $none}) =>
      $apply(FieldCopyWithData({
        if (page != $none) #page: page,
        if (pageSize != $none) #pageSize: pageSize,
        if (total != $none) #total: total,
        if (totalPages != $none) #totalPages: totalPages
      }));
  @override
  PaginationResponse $make(CopyWithData data) => PaginationResponse(
      page: data.get(#page, or: $value.page),
      pageSize: data.get(#pageSize, or: $value.pageSize),
      total: data.get(#total, or: $value.total),
      totalPages: data.get(#totalPages, or: $value.totalPages));

  @override
  PaginationResponseCopyWith<$R2, PaginationResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PaginationResponseCopyWithImpl($value, $cast, t);
}
