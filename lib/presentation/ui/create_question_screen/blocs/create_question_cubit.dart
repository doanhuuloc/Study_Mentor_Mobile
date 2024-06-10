import 'dart:io';

import 'package:file_picker/file_picker.dart';

import '../../../../application/services/education/education.dart';
import '../../../../application/services/file/file.dart';
import '../../../bases/bloc_utils/safe_cubit/safe_cubit.dart';
import '../../../bases/file_cubit/file_cubit.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';
import 'create_question_state.dart';

class CreateQuestionCubit extends SafeCubit<CreateQuestionState> {
  CreateQuestionCubit({
    required this.fileCubit,
    required this.failureHandlerManager,
    required this.educationController,
    required this.questionType,
  }) : super(const CreateQuestionState(listFilePicker: [])) {
    getStructureEducation();
    getVoucher();
  }

  final FileCubit fileCubit;
  final FailureHandlerManager failureHandlerManager;
  final EducationController educationController;
  final QuestionType questionType;

  void onChangeContentQuestion(String value) {
    emit(state.copyWith(contentQuestionField: value));
  }

  void onChangeFindingTime(int value) {
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

  Future<void> getVoucher() async {
    final voucher = await educationController.getVoucher();

    if (voucher.isLeft) {
      failureHandlerManager.handle(voucher.left);
    }

    if (voucher.isRight) {
      emit(state.copyWith(vouchers: voucher.right.data));
    }
  }

  Future<void> calculatePrice() async {
    final res = await educationController.calculatePrice(
        calculatePriceRequest: CalculatePriceRequest(
      level: state.level?.levelName ?? "",
      numberOfStar: state.numberOfStar ?? 0,
      timeFindTutor: state.findingTimeField ?? 0,
      voucherCode: state.selectedVoucher?.code,
    ));

    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      emit(state.copyWith(calculatePriceReponse: res.right.data));
    }
  }

  Future<CreateQuestionResponse> createQuestion() async {
    final res = await educationController.createQuestion(
        createQuestionRequest: CreateQuestionRequest(
      subjectId: state.subject?.id ?? "",
      numberOfStar: state.numberOfStar ?? 0,
      timeFindTutor: state.findingTimeField ?? 0,
      content: state.contentQuestionField,
      voucherCode: state.selectedVoucher?.code,
      attachFiles: await fileCubit.uploadListFile(state.listFilePicker
          .map((e) => FileData(
              file: File(e.files.single.path ?? ""),
              fileName: e.files.single.name))
          .toList()),
      timeMeeting:
          questionType == QuestionType.GGMEET ? state.timeMeeting : null,
    ));

    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      emit(state.copyWith(createQuestionResponse: res.right.data));
      return res.right.data;
    }
    return const CreateQuestionResponse();
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

  void onChangeTimeMeeting(int value) {
    emit(state.copyWith(findingTimeField: value));
  }

  void onChangeVoucher(VoucherReponse value) {
    emit(state.copyWith(selectedVoucher: value));
  }

  void clearCalculatePrice() {
    emit(state.copyWith(calculatePriceReponse: const CalculatePriceReponse()));
  }
}
