import 'package:file_picker/file_picker.dart';

import '../../../../application/services/education/education.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../bases/file_cubit/file_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'create_question_state.dart';

class CreateQuestionCubit extends SafeCubit<CreateQuestionState> {
  CreateQuestionCubit({
    required this.fileCubit,
    required this.failureHandlerManager,
    required this.educationController,
  }) : super(const CreateQuestionState(listFilePicker: [])) {
    getStructureEducation();
  }

  final FileCubit fileCubit;
  final FailureHandlerManager failureHandlerManager;
  final EducationController educationController;

  void onChangeContentQuestion(String value) {
    emit(state.copyWith(contentQuestionField: value));
  }

  void onChangeFindingTime(String value) {
    emit(state.copyWith(findingTimeField: value));
  }

  void onChangeNumberOfStar(int value) {
    emit(state.copyWith(numberOfStar: value));
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

  Future<void> getStructureEducation() async {
    final structure = await educationController.getStructureEducation();

    if (structure.isLeft) {
      failureHandlerManager.handle(structure.left);
    }

    if (structure.isRight) {
      emit(state.copyWith(structure: structure.right.data));
    }
  }

  Future<void> createQuestion() async {
    final res = await educationController.createQuestion(
        createQuestionRequest: CreateQuestionRequest(
      subjectId: state.subject?.id ?? "",
      numberOfStar: state.numberOfStar ?? 0,
      timeFindTutor: int.parse(state.answerTimeField),
      content: state.contentQuestionField,
      attachFiles: await fileCubit.uploadListFile(state.listFilePicker),
    ));

    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      emit(state.copyWith(createQuestionResponse: res.right.data));
    }
  }

  void onChangeLevel(LevelResponse level) {
    emit(state.copyWith(
        level: level,
        grade: const GradeResponse(),
        subject: const SubjectResponse()));
  }

  void onChangeGrade(GradeResponse grade) {
    emit(state.copyWith(grade: grade, subject: const SubjectResponse()));
  }

  void onChangeSubject(SubjectResponse subject) {
    emit(state.copyWith(subject: subject));
  }
}
