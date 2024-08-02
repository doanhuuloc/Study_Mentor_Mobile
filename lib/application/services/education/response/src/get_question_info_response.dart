import 'package:dart_mappable/dart_mappable.dart';

import '../../../file/file.dart';
import '../../../socket/dto/src/get_answer.dart';
import '../../../user/user.dart';
import '../../education.dart';

part 'get_question_info_response.mapper.dart';

@MappableClass()
class GetQuestionInfoResponse with GetQuestionInfoResponseMappable {
  const GetQuestionInfoResponse({
    this.questionId,
    this.title,
    this.createdAt,
    this.updatedAt,
    this.answerTime,
    this.content,
    this.price,
    this.status,
    this.isPaid,
    this.type,
    this.fileQuestions,
    this.student,
    this.tutor,
    this.subject,
    this.answers,
    this.isAccepted,
    this.isAnswered,
    this.reportId,
    this.questionType,
    this.meetingURL,
    this.timeMetting,
    this.meeting_start_time,
    this.meeting_end_time,
    this.isStudentPaid,
    this.roomId,
  });
  factory GetQuestionInfoResponse.fromJson(Map<String, dynamic> json) =>
      GetQuestionInfoResponseMapper.fromJson(json);

  final String? questionId;
  final String? title;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? answerTime;
  final String? content;
  final String? price;
  final QuestionStatus? status;
  final bool? isPaid;
  final int? type;
  final List<FileResponse>? fileQuestions;
  final UserInfoResponse? student;
  final UserInfoResponse? tutor;
  final SubjectResponse? subject;
  final List<Answer>? answers;
  final bool? isAccepted;
  final bool? isAnswered;
  final String? reportId;
  final QuestionType? questionType;
  final int? timeMetting;
  final String? meetingURL;
  final DateTime? meeting_start_time;
  final DateTime? meeting_end_time;
  final bool? isStudentPaid;
  final String? roomId;
}
