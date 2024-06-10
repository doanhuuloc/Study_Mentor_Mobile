import 'package:study_mentor_mobile/application/services/socket/dto/src/picked-tutor-accepted-question.dart';

import '../../../../application/services/education/education.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../bases/socket_cubit/socket_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'intrustor_info_state.dart';

class IntrustorInfoCubit extends SafeCubit<IntrustorInfoState> {
  IntrustorInfoCubit({
    required this.failureHandlerManager,
    required this.educationController,
    required this.socketCubit,
  }) : super(const IntrustorInfoState());

  final FailureHandlerManager failureHandlerManager;
  final EducationController educationController;
  final SocketCubit socketCubit;

  Future<void> pickIntrustor(PickIntrustorRequest pickIntrustorRequest) async {
    socketCubit.pickedTutorAcceptedQuestion(
        (PickedTutorAcceptedQuestion pickedTutorAcceptedQuestion) {
      emit(state.copyWith(
          isAccepted: pickedTutorAcceptedQuestion.data?.isAccepted ?? 0));
    });
    final response = await educationController.pickIntrustor(
        pickIntrustorRequest: pickIntrustorRequest);
    if (response.isLeft) {
      failureHandlerManager.handle(response.left);
    }

    if (response.isRight) {}
  }
}
