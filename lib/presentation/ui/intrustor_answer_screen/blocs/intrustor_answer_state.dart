import 'package:study_mentor_mobile/application/services/socket/dto/src/get_answer.dart';

import '../../../../application/services/education/education.dart';

class IntrustorAnswerState {
  const IntrustorAnswerState({
    this.isLoading = false,
    this.roomId,
    this.answer,
    this.meetingUrl,
    this.questionId,
    this.questionInfo,
  });

  final bool isLoading;
  final String? roomId;
  final String? questionId;
  final GetQuestionInfoResponse? questionInfo;
  final Answer? answer;
  final String? meetingUrl;

  copyWith({
    bool? isLoading,
    String? roomId,
    String? questionId,
    GetQuestionInfoResponse? questionInfo,
    Answer? answer,
    String? meetingUrl,
  }) {
    return IntrustorAnswerState(
      isLoading: isLoading ?? this.isLoading,
      roomId: roomId ?? this.roomId,
      questionId: questionId ?? this.questionId,
      questionInfo: questionInfo ?? this.questionInfo,
      answer: answer ?? this.answer,
      meetingUrl: meetingUrl ?? this.meetingUrl,
    );
  }
}
