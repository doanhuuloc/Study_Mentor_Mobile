import 'package:study_mentor_mobile/application/services/socket/dto/src/get_answer.dart';
import 'package:study_mentor_mobile/utilities/logging/logging.dart';

import '../../../../application/services/education/education.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../bases/socket_cubit/socket_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'intrustor_answer_state.dart';

class IntrustorAnswerCubit extends SafeCubit<IntrustorAnswerState> {
  IntrustorAnswerCubit({
    required this.failureHandlerManager,
    required this.educationController,
    required this.socketCubit,
    required this.questionId,
  }) : super(const IntrustorAnswerState()) {
    emit(state.copyWith(questionId: questionId));
    _fetchData();
  }

  final FailureHandlerManager failureHandlerManager;
  final EducationController educationController;
  final SocketCubit socketCubit;
  final String questionId;

  Future<void> getQuestion() async {
    final response = await educationController.getQuestionInfoResponse(
        questionId: questionId);
    if (response.isLeft) {
      failureHandlerManager.handle(response.left);
    }

    if (response.isRight) {
      logging.i(response.right.data.questionType);
      emit(state.copyWith(
        questionInfo: response.right.data,
        // answer: response.right.data.answers?[0],
      ));
      // if (response.right.data.questionType == QuestionType.GGMEET &&
      //     response.right.data.isAnswered == true) {
      //   logging.i("yes");
      // }
    }
  }

  // Future<void> createGGMeet() async {
  //   if (state.questionInfo?.questionType == QuestionType.GGMEET &&
  //       (state.questionInfo?.meetingURL == null ||
  //           state.questionInfo?.meetingURL == "")) {
  //     final meetUrl = await educationController.createGGMeet(
  //         createGGMeetRequest: CreateGGMeetRequest(
  //             questionId: questionId,
  //             tutorId: state.questionInfo?.tutor?.id ?? ""));

  //     if (meetUrl.isLeft) {
  //       failureHandlerManager.handle(meetUrl.left);
  //     }
  //     if (meetUrl.isRight) {
  //       emit(state.copyWith(meetingUrl: meetUrl.right.data.meetingUrl));
  //     }
  //   }
  // }

  // void getAnswer() {
  //   if (state.questionInfo?.questionType == QuestionType.FILE &&
  //       (state.questionInfo?.answers == null ||
  //           (state.questionInfo?.answers ?? []).isEmpty)) {
  //     socketCubit.getAnswer((GetAnswer answer) {
  //       emit(state.copyWith(answer: answer.data?.answer));
  //     });
  //   }
  // }

  Future<bool> completedQuestion() async {
    final res = await educationController.updateQuestionStatus(
        updateQuestionStatusRequest:
            UpdateQuestionStatusRequest(questionId: questionId, status: 6));
    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      return true;
    }
    return false;
  }

  Future<bool> rateQuestion(String comment, int star) async {
    final res = await educationController.rateQuestion(
        questionId: questionId,
        rateQuestionRequest: RateQuestionRequest(
            tutorId: state.questionInfo?.tutor?.id ?? "",
            comment: comment,
            numberOfStar: star));
    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      return true;
    }
    return false;
  }

  Future<void> _fetchData() async {
    await getQuestion();
    // getAnswer();
    // await createGGMeet();
  }
}
