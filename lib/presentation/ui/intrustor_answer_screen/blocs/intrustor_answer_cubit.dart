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
  }) : super(const IntrustorAnswerState());

  final FailureHandlerManager failureHandlerManager;
  final EducationController educationController;
  final SocketCubit socketCubit;

  
}
