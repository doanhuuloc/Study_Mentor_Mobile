import 'package:study_mentor_mobile/application/services/user/user.dart';
import 'package:study_mentor_mobile/presentation/bases/file_cubit/file_cubit.dart';
import 'package:study_mentor_mobile/presentation/shared/handlers/loading_handler/loading_manager.dart';

import '../../../../../application/services/education/education.dart';
import '../../../../../application/services/socket/dto/dto.dart';
import '../../../../../application/services/socket/dto/src/get_answer.dart';
import '../../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../../bases/socket_cubit/socket_cubit.dart';
import '../../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'detailed_question_state.dart';

class DetailedQuestionCubit extends SafeCubit<DetailedQuestionState> {
  DetailedQuestionCubit({
    required this.userId,
    this.tutor,
    required this.failureHandlerManager,
    required this.fileCubit,
    required this.loadingManager,
    required this.educationController,
    required this.socketCubit,
    required this.questionId,
  }) : super(const DetailedQuestionState()) {
    emit(state.copyWith(questionId: questionId));
    fetchData();
    receiveInfoGGMeet();
    receiveGGMeet();
  }

  final String userId;
  final UserInfoResponse? tutor;
  final FailureHandlerManager failureHandlerManager;
  final FileCubit fileCubit;
  final LoadingManager loadingManager;
  final EducationController educationController;
  final SocketCubit socketCubit;
  final String questionId;

  void changeReportId(String value) {
    emit(state.copyWith(
        questionInfo: state.questionInfo?.copyWith(reportId: value)));
  }

  Future<void> getQuestion() async {
    emit(state.copyWith(loading: true));
    final response = await educationController.getQuestionInfoResponse(
        questionId: questionId);
    if (response.isLeft) {
      failureHandlerManager.handle(response.left);
    }

    if (response.isRight) {
      emit(state.copyWith(
        loading: false,
        questionInfo: response.right.data,
        answer: (response.right.data.answers ?? []).isEmpty
            ? null
            : response.right.data.answers?[0],
        meetingUrl: response.right.data.meetingURL,
      ));
    }
  }

  Future<void> createGGMeet() async {
    final meetUrl = await educationController.createGGMeet(
        createGGMeetRequest: CreateGGMeetRequest(
            questionId: questionId,
            tutorId: state.questionInfo?.tutor?.id ?? ""));

    if (meetUrl.isLeft) {
      failureHandlerManager.handle(meetUrl.left);
    }
    if (meetUrl.isRight) {
      emit(state.copyWith(
        meetingUrl: meetUrl.right.data.meetingUrl ??
            "https://meet.google.com/xvc-fcxq-ohw",
        questionInfo:
            state.questionInfo?.copyWith(status: QuestionStatus.ANSWERED),
      ));
    }
  }

  void getAnswer() {
    if (state.questionInfo?.questionType == QuestionType.FILE &&
        (state.questionInfo?.answers == null ||
            (state.questionInfo?.answers ?? []).isEmpty)) {
      socketCubit.getAnswer((GetAnswer answer) {
        emit(state.copyWith(
            answer: answer.data?.answer,
            questionInfo:
                state.questionInfo?.copyWith(status: QuestionStatus.ANSWERED)));
      });
    }
  }

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
          numberOfStar: star,
        ));

    // final res = await loadingManager.startLoading(future: futureRes);
    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      return true;
    }
    return false;
  }

  Future<String> payment() async {
    final futureRes = educationController.payment(
        paymentLinkRequest: PaymentLinkRequest(
      questionId: questionId,
      type: 0,
      expirationDateType: ExpirationDateType.DAY,
    ));

    final res = await loadingManager.startLoading(future: futureRes);

    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      if (res.right.data.checkoutUrl != "") {
        return res.right.data.checkoutUrl!;
      }
    }

    return "";
  }

  void onChangeMeetingStartTime(DateTime value) {
    emit(state.copyWith(meetingStartTime: value));
  }

  void onChangeShowModalAcceptGGMeet(bool value) {
    emit(state.copyWith(showModalAcceptGGMeet: value));
  }

  void sendInfoGGMeet() {
    final InfoGGMeet infoGGMeet = InfoGGMeet(
      studentId: userId,
      tutorId: state.questionInfo?.tutor?.id ?? "",
      questionId: questionId,
      meeting_start_time: state.meetingStartTime,
      isStudent: true,
    );
    socketCubit.sendInfoGGMeet(infoGGMeet);
  }

  void receiveInfoGGMeet() {
    socketCubit.receiveInfoGGMeet((InfoGGMeet infoGGMeet) {
      emit(state.copyWith(
          meetingStartTime: infoGGMeet.meeting_start_time,
          showModalAcceptGGMeet: state.showModalAcceptGGMeet ? false : true));
    });
  }

  void receiveGGMeet() {
    socketCubit.receiveGGMeet((ReceiveGGMeet infoGGMeet) {
      emit(state.copyWith(
          meetingUrl:
              infoGGMeet.meetingUrl ?? "https://meet.google.com/xvc-fcxq-ohw",
          meetingStartTime: infoGGMeet.meeting_start_time,
          questionInfo:
              state.questionInfo?.copyWith(status: QuestionStatus.ANSWERED)));
    });
  }

  void cancelGGMeet() {
    final InfoGGMeet infoGGMeet = InfoGGMeet(
      studentId: userId,
      tutorId: state.questionInfo?.tutor?.id ?? "",
      questionId: questionId,
      isStudent: true,
    );
    socketCubit.sendInfoGGMeet(infoGGMeet);
  }

  Future<void> fetchData() async {
    await getQuestion();
    getAnswer();
  }
}
