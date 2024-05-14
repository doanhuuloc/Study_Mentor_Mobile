import 'package:file_picker/file_picker.dart';

import '../../../../application/services/education/education.dart';

class CreateQuestionState {
  const CreateQuestionState({
    this.loading = false,
    this.contentQuestionField = "",
    this.answerTimeField = "",
    this.numberOfStar,
    this.level,
    this.grade,
    this.subject,
    this.listFilePicker = const [],
    this.createQuestionResponse,
    this.structure,
  });

  final bool loading;
  final String contentQuestionField;
  final String answerTimeField;
  final int? numberOfStar;
  final LevelResponse? level;
  final GradeResponse? grade;
  final SubjectResponse? subject;
  final List<FilePickerResult> listFilePicker;
  final CreateQuestionResponse? createQuestionResponse;
  final List<LevelResponse>? structure;

  bool get canSubmit {
    return subject != null;
  }

  CreateQuestionState copyWith({
    bool? loading,
    String? contentQuestionField,
    String? findingTimeField,
    int? numberOfStar,
    LevelResponse? level,
    GradeResponse? grade,
    SubjectResponse? subject,
    List<FilePickerResult>? listFilePicker,
    CreateQuestionResponse? createQuestionResponse,
    List<LevelResponse>? structure,
  }) {
    return CreateQuestionState(
      loading: loading ?? this.loading,
      contentQuestionField: contentQuestionField ?? this.contentQuestionField,
      answerTimeField: findingTimeField ?? answerTimeField,
      numberOfStar: numberOfStar ?? this.numberOfStar,
      level: level ?? this.level,
      grade: grade == const GradeResponse() ? null : grade ?? this.grade,
      subject:
          subject == const SubjectResponse() ? null : subject ?? this.subject,
      listFilePicker: listFilePicker ?? this.listFilePicker,
      createQuestionResponse:
          createQuestionResponse ?? this.createQuestionResponse,
      structure: structure ?? this.structure,
    );
  }
}
