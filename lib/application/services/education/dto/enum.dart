// ignore_for_file: constant_identifier_names

import 'package:dart_mappable/dart_mappable.dart';

part 'enum.mapper.dart';

@MappableEnum(mode: ValuesMode.indexed)
enum QuestionStatus {
  PENDING('pending'),
  NEW('new'),
  ACCEPTED('accepted'),
  REJECTED('rejected'),
  ANSWERED('answered'),
  EXPIRED('expired'),
  DONE('done');

  final String name;

  const QuestionStatus(this.name);
}

@MappableEnum(mode: ValuesMode.indexed)
enum QuestionType { GGMEET, FILE }
