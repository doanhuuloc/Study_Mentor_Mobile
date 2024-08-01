import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/utilities/logging/logging.dart';

import '../../../../../application/services/education/education.dart';
import '../../../../../application/services/socket/dto/dto.dart';
import '../../../../../application/services/socket/dto/src/picked-tutor-accepted-question.dart';
import '../../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../../bases/socket_cubit/socket_cubit.dart';
import '../../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'find_intrustor_state.dart';

class FindIntrustorCubit extends SafeCubit<FindIntrustorState> {
  FindIntrustorCubit({
    required this.failureHandlerManager,
    required this.educationController,
    required this.socketCubit,
    required this.questionId,
    required this.subjectId,
    required this.userId,
  }) : super(const FindIntrustorState()) {
    onGetTutor();
    getTutor();
  }

  final FailureHandlerManager failureHandlerManager;
  final EducationController educationController;
  final SocketCubit socketCubit;
  final String questionId;
  final String subjectId;
  final String userId;

  Future<void> findIntrustor() async {
    final response =
        await educationController.findTutor(questionId: questionId);

    if (response.isLeft) {
      failureHandlerManager.handle(response.left);
    }

    if (response.isRight) {
      logging.i(response.right.message);
      setFindingWithSystem(true);
    }
  }

  void setFindingWithSystem(bool value) {
    emit(state.copyWith(findingWithSystem: value));
  }

  void onGetTutor() {
    socketCubit.onGetTutorAvailable(
      (OnGetTutor onGetTutor) => {
        emit(
          state.copyWith(
            page: onGetTutor.nextPage,
            totalPages: onGetTutor.totalPages,
            tutor: onGetTutor.data,
          ),
        ),
      },
    );
  }

  void getTutor() {
    socketCubit.emitGetTutorAvailable(
        getTutor: EmitGetTutor(
      page: state.page,
      pageSize: 10,
      subjectId: subjectId,
      userId: userId,
    ));
  }

  Future<void> selectTutor(BuildContext context, Tutor tutor) async {
    final res = await ConfirmRouteData(
      content: S.of(context).chooseIntructorToAnswer(tutor.fullName ?? ""),
      acceptTitle: S.of(context).yes,
      rejectTitle: S.of(context).no,
      title: S.of(context).chooseIntructor,
    ).push(context);

    if (res == true) {
      socketCubit.pickedTutorAcceptedQuestion(
          (PickedTutorAcceptedQuestion pickedTutorAcceptedQuestion) {
        emit(state.copyWith(
          isAccepted: pickedTutorAcceptedQuestion.data?.isAccepted == 1,
          waittingTutorAccepted: false,
        ));

        if (pickedTutorAcceptedQuestion.data?.isAccepted == 0) {
          if (!context.mounted) {
            return;
          }

          AlertRouteData(
                  content: S.of(context).rejectToAnswer(tutor.fullName ?? ""))
              .push(context);
        }
      });

      final response = await educationController.pickIntrustor(
          pickIntrustorRequest: PickIntrustorRequest(
        tutorId: tutor.id ?? "",
        questionId: questionId,
      ));

      if (response.isLeft) {
        failureHandlerManager.handle(response.left);
      }

      if (response.isRight) {
        emit(state.copyWith(waittingTutorAccepted: true));
      }

      if (!context.mounted) {
        return;
      }
      // await AlertRouteData(
      //         content: S.of(context).wattingAccepted(tutor.fullName ?? ""))
      //     .push(context);
    }
  }

  Future<void> pickIntrustor(PickIntrustorRequest pickIntrustorRequest) async {}
}
