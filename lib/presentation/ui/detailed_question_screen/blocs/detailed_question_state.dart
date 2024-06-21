import 'package:study_mentor_mobile/application/services/socket/dto/src/get_answer.dart';

import '../../../../application/services/education/education.dart';

class DetailedQuestionState {
  const DetailedQuestionState({
    this.loading = false,
    this.roomId,
    this.answer,
    this.meetingUrl,
    this.questionId,
    this.questionInfo,
  });

  final bool loading;
  final String? roomId;
  final String? questionId;
  final GetQuestionInfoResponse? questionInfo;
  final Answer? answer;
  final String? meetingUrl;

  copyWith({
    bool? loading,
    String? roomId,
    String? questionId,
    GetQuestionInfoResponse? questionInfo,
    Answer? answer,
    String? meetingUrl,
  }) {
    return DetailedQuestionState(
      loading: loading ?? this.loading,
      roomId: roomId ?? this.roomId,
      questionId: questionId ?? this.questionId,
      questionInfo: questionInfo ?? this.questionInfo,
      answer: answer ?? this.answer,
      meetingUrl: meetingUrl ?? this.meetingUrl,
    );
  }
}
