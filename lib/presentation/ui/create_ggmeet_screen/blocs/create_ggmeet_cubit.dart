import '../../../../application/services/education/education.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../bases/file_cubit/file_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'create_ggmeet_state.dart';

class CreateGGMeetCubit extends SafeCubit<CreateGGMeetState> {
  CreateGGMeetCubit({
    required this.fileCubit,
    required this.failureHandlerManager,
    required this.educationController,
  }) : super(const CreateGGMeetState()) {
    getStructureEducation();
  }

  final FileCubit fileCubit;
  final FailureHandlerManager failureHandlerManager;
  final EducationController educationController;

  void onChangeAnswerTime(String value) {
    emit(state.copyWith(answerTimeField: value));
  }

  void onChangeFindingTime(String value) {
    emit(state.copyWith(findingTimeField: value));
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

  Future<void> createGGMeet() async {
    // final res = await educationController.createGGMeet(
    //     createGGMeetRequest: CreateGGMeetRequest(
    //   subjectId: state.subject?.id ?? "",
    //   numberOfStar: state.numberOfStar ?? 0,
    //   timeFindTutor: int.parse(state.answerTimeField),
    //   content: state.contentQuestionField,
    //   attachFiles: await fileCubit.uploadListFile(state.listFilePicker),
    // ));

    // if (res.isLeft) {
    //   failureHandlerManager.handle(res.left);
    // }

    // if (res.isRight) {
    //   emit(state.copyWith(createGGMeetResponse: res.right.data));
    // }
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
