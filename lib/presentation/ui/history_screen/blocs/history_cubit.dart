import 'dart:async';

import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import 'history_state.dart';

class HomeCubit extends SafeCubit<HistoryState> {
  HomeCubit() : super(const HistoryState()) {
    _fetchData();
  }

  Future<void> _fetchData() async {
    await Future.wait([]);
  }

  void reload() {
    _fetchData();
  }
}
