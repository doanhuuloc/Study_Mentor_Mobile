import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'find_intrustor_state.dart';

class FindIntrustorCubit extends SafeCubit<FindIntrustorState> {
  FindIntrustorCubit({
    required this.failureHandlerManager,
  }) : super(const FindIntrustorState());

  final FailureHandlerManager failureHandlerManager;
}
