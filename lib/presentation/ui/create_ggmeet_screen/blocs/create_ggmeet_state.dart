
import '../../../../application/services/education/education.dart';

class CreateGGMeetState {
  const CreateGGMeetState({
    this.loading = false,
    this.answerTimeField = "",
    this.level,
    this.grade,
    this.subject,
    this.structure,
    this.findingTimeField = "",
  });

  final bool loading;
  final String answerTimeField;
  final LevelResponse? level;
  final GradeResponse? grade;
  final SubjectResponse? subject;
  final List<LevelResponse>? structure;
  final String findingTimeField;

  bool get canSubmit {
    return subject != null;
  }

  CreateGGMeetState copyWith({
    bool? loading,
    String? answerTimeField,
    LevelResponse? level,
    GradeResponse? grade,
    SubjectResponse? subject,
    List<LevelResponse>? structure,
    String? findingTimeField,
  }) {
    return CreateGGMeetState(
      loading: loading ?? this.loading,
      answerTimeField: answerTimeField ?? this.answerTimeField,
      level: level ?? this.level,
      grade: grade == const GradeResponse() ? null : grade ?? this.grade,
      subject:
          subject == const SubjectResponse() ? null : subject ?? this.subject,
      structure: structure ?? this.structure,
      findingTimeField: findingTimeField ?? this.findingTimeField,
    );
  }
}
