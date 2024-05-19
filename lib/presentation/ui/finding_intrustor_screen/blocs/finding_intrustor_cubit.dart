import '../../../../application/services/education/education.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../bases/socket_cubit/socket_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'finding_intrustor_state.dart';

class FindingIntrustorCubit extends SafeCubit<FindingIntrustorState> {
  FindingIntrustorCubit({
    required this.failureHandlerManager,
    required this.educationController,
    required this.socketCubit,
  }) : super(const FindingIntrustorState()) {
    findingIntrustor();
  }

  final FailureHandlerManager failureHandlerManager;
  final EducationController educationController;
  final SocketCubit socketCubit;

  void findingIntrustor() {
    socketCubit.intrustorAccepted();
    socketCubit.getVoucher();
  }
}
