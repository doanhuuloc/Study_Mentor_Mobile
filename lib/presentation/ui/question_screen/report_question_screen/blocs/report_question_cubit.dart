import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:study_mentor_mobile/presentation/shared/handlers/loading_handler/loading_manager.dart';

import '../../../../../application/services/education/education.dart';
import '../../../../../application/services/file/file.dart';
import '../../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../../bases/file_cubit/file_cubit.dart';
import '../../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'report_question_state.dart';

class ReportQuestionCubit extends SafeCubit<ReportQuestionState> {
  ReportQuestionCubit({
    required this.fileCubit,
    required this.failureHandlerManager,
    required this.loadingManager,
    required this.educationController,
    required this.userId,
    required this.questionInfo,
  }) : super(const ReportQuestionState(listFilePicker: []));

  final FileCubit fileCubit;
  final FailureHandlerManager failureHandlerManager;
  final LoadingManager loadingManager;
  final EducationController educationController;
  final String userId;
  final GetQuestionInfoResponse questionInfo;

  void onChangeContent(String value) {
    emit(state.copyWith(content: value));
  }

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      var newListFile = [...state.listFilePicker];
      newListFile.add(result);
      emit(state.copyWith(listFilePicker: newListFile));
    }
  }

  Future<void> removeFilePicker(FilePickerResult value) async {
    final newListFile = [...state.listFilePicker];
    newListFile.removeWhere((element) => element == value);
    emit(state.copyWith(listFilePicker: newListFile));
  }

  Future<bool> reportTutor() async {
    List<FileRequest>? files;
    if (state.listFilePicker != []) {
      files = await fileCubit.uploadListFile([
        ...state.listFilePicker.map((e) => FileData(
            file: File(e.files.single.path ?? ""),
            fileName: e.files.single.name)),
      ]);
    }

    final futureRes = educationController.reportTutor(
      reportTutorRequest: ReportTutorRequest(
        questionId: questionInfo.questionId ?? "",
        tutorId: questionInfo.tutor?.id ?? "",
        studentId: userId,
        content: state.content,
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
}
