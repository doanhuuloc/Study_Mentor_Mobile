import '../../../../../application/services/education/education.dart';
import '../../../../../application/services/user/user.dart';
import '../../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../../bases/socket_cubit/socket_cubit.dart';
import '../../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'finding_intrustor_state.dart';

class FindingIntrustorCubit extends SafeCubit<FindingIntrustorState> {
  FindingIntrustorCubit({
    required this.failureHandlerManager,
    required this.educationController,
    required this.socketCubit,
    required this.questionId,
  }) : super(const FindingIntrustorState()) {
    findingIntrustor();
  }

  final FailureHandlerManager failureHandlerManager;
  final EducationController educationController;
  final SocketCubit socketCubit;
  final String questionId;
  void findingIntrustor() {
    socketCubit.getAcceptTutorInfo((UserInfoResponse? tutor) {
      emit(state.copyWith(tutor: tutor));
    });
    socketCubit.getVoucher();
  }

  Future<bool> cancelFindSystemQuestion() async {
    final res = await educationController.cancelFindSystemQuestion(
        cancelFindSystemQuestionRequest:
            CancelFindSystemQuestionRequest(questionId: questionId));
    // if (res.isLeft) {
    //   failureHandlerManager.handle(res.left);
    // }

    if (res.isRight) {
      return true;
    }

    return true;
  }
}
