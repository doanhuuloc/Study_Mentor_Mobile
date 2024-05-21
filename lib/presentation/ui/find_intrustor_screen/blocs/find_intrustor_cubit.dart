import 'package:study_mentor_mobile/utilities/logging/logging.dart';

import '../../../../application/services/education/education.dart';
import '../../../../application/services/socket/dto/dto.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../bases/socket_cubit/socket_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
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

  void getTutor() {
    socketCubit.emitGetTutorAvailable(
        getTutor: EmitGetTutor(
      page: state.page,
      pageSize: 10,
      subjectId: subjectId,
      userId: "",
    ));
    
    socketCubit.onGetTutorAvailable(
      (OnGetTutor onGetTutor) => {
        emit(
          state.copyWith(
            page: onGetTutor.nextPage,
            totalPages: onGetTutor.totalPages,
            tutor: onGetTutor.tutor,
          ),
        ),
      },
    );
  }
}
