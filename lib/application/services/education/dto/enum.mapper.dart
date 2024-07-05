// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'enum.dart';

class QuestionStatusMapper extends EnumMapper<QuestionStatus> {
  QuestionStatusMapper._();

  static QuestionStatusMapper? _instance;
  static QuestionStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = QuestionStatusMapper._());
    }
    return _instance!;
  }

  static QuestionStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  QuestionStatus decode(dynamic value) {
    switch (value) {
      case 0:
        return QuestionStatus.PENDING;
      case 1:
        return QuestionStatus.NEW;
      case 2:
        return QuestionStatus.ACCEPTED;
      case 3:
        return QuestionStatus.REJECTED;
      case 4:
        return QuestionStatus.ANSWERED;
      case 5:
        return QuestionStatus.EXPIRED;
      case 6:
        return QuestionStatus.DONE;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(QuestionStatus self) {
    switch (self) {
      case QuestionStatus.PENDING:
        return 0;
      case QuestionStatus.NEW:
        return 1;
      case QuestionStatus.ACCEPTED:
        return 2;
      case QuestionStatus.REJECTED:
        return 3;
      case QuestionStatus.ANSWERED:
        return 4;
      case QuestionStatus.EXPIRED:
        return 5;
      case QuestionStatus.DONE:
        return 6;
    }
  }
}

extension QuestionStatusMapperExtension on QuestionStatus {
  dynamic toValue() {
    QuestionStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<QuestionStatus>(this);
  }
}

class QuestionTypeMapper extends EnumMapper<QuestionType> {
  QuestionTypeMapper._();

  static QuestionTypeMapper? _instance;
  static QuestionTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = QuestionTypeMapper._());
    }
    return _instance!;
  }

  static QuestionType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  QuestionType decode(dynamic value) {
    switch (value) {
      case 0:
        return QuestionType.GGMEET;
      case 1:
        return QuestionType.FILE;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(QuestionType self) {
    switch (self) {
      case QuestionType.GGMEET:
        return 0;
      case QuestionType.FILE:
        return 1;
    }
  }
}

extension QuestionTypeMapperExtension on QuestionType {
  dynamic toValue() {
    QuestionTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<QuestionType>(this);
  }
}

class ExpirationDateTypeMapper extends EnumMapper<ExpirationDateType> {
  ExpirationDateTypeMapper._();

  static ExpirationDateTypeMapper? _instance;
  static ExpirationDateTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ExpirationDateTypeMapper._());
    }
    return _instance!;
  }

  static ExpirationDateType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ExpirationDateType decode(dynamic value) {
    switch (value) {
      case 0:
        return ExpirationDateType.DAY;
      case 1:
        return ExpirationDateType.WEEK;
      case 2:
        return ExpirationDateType.MONTH;
      case 3:
        return ExpirationDateType.YEAR;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ExpirationDateType self) {
    switch (self) {
      case ExpirationDateType.DAY:
        return 0;
      case ExpirationDateType.WEEK:
        return 1;
      case ExpirationDateType.MONTH:
        return 2;
      case ExpirationDateType.YEAR:
        return 3;
    }
  }
}

extension ExpirationDateTypeMapperExtension on ExpirationDateType {
  dynamic toValue() {
    ExpirationDateTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ExpirationDateType>(this);
  }
}
