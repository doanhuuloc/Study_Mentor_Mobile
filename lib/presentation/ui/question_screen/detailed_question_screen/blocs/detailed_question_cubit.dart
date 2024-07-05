import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:study_mentor_mobile/application/services/user/user.dart';
import 'package:study_mentor_mobile/presentation/bases/file_cubit/file_cubit.dart';
import 'package:study_mentor_mobile/presentation/shared/handlers/loading_handler/loading_manager.dart';

import '../../../../../application/services/education/education.dart';
import '../../../../../application/services/file/file.dart';
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
  }

  final String userId;
  final UserInfoResponse? tutor;
  final FailureHandlerManager failureHandlerManager;
  final FileCubit fileCubit;
  final LoadingManager loadingManager;
  final EducationController educationController;
  final SocketCubit socketCubit;
  final String questionId;

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
    if (state.questionInfo?.questionType == QuestionType.GGMEET &&
        (state.questionInfo?.meetingURL == null ||
            state.questionInfo?.meetingURL == "")) {
      final meetUrl = await educationController.createGGMeet(
          createGGMeetRequest: CreateGGMeetRequest(
              questionId: questionId,
              tutorId: state.questionInfo?.tutor?.id ?? ""));

      if (meetUrl.isLeft) {
        failureHandlerManager.handle(meetUrl.left);
      }
      if (meetUrl.isRight) {
        // emit(state.copyWith(meetingUrl: meetUrl.right.data.meetingUrl));
        emit(
            state.copyWith(meetingUrl: "https://meet.google.com/xvc-fcxq-ohw"));
      }
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
            numberOfStar: star));

    // final res = await loadingManager.startLoading(future: futureRes);
    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      return true;
    }
    return false;
  }

  Future<bool> reportTutor(String content, List<XFile>? file) async {
    List<FileRequest>? files;
    if (file != null && file != []) {
      files = await fileCubit.uploadListFile([
        ...file.map((e) => FileData(file: File(e.path), fileName: e.name)),
      ]);
    }

    final futureRes = educationController.reportTutor(
      reportTutorRequest: ReportTutorRequest(
        questionId: questionId,
        tutorId: state.questionInfo?.tutor?.id ?? "",
        studentId: userId,
        content: "best",
        attachFiles: files,
      ),
    );

    final res = await loadingManager.startLoading(future: futureRes);

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
        paymentLinkRequest:
            PaymentLinkRequest(questionId: questionId, type: 0));

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

  Future<void> fetchData() async {
    await getQuestion();
    getAnswer();
    await createGGMeet();
  }
}
