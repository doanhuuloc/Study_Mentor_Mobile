import 'package:file_picker/file_picker.dart';

class ReportQuestionState {
  const ReportQuestionState({
    this.loading = false,
    this.content = "",
    this.listFilePicker = const [],
    this.reportFLowCompleted = false,
  });

  final bool loading;
  final String content;

  final List<FilePickerResult> listFilePicker;
  final bool reportFLowCompleted;

  bool get canSubmit {
    return content != "";
  }

  ReportQuestionState copyWith({
    bool? loading,
    String? content,
    List<FilePickerResult>? listFilePicker,
    bool? reportFLowCompleted,
  }) {
    return ReportQuestionState(
      loading: loading ?? this.loading,
      content: content ?? this.content,
      listFilePicker: listFilePicker ?? this.listFilePicker,
      reportFLowCompleted: reportFLowCompleted ?? this.reportFLowCompleted,
    );
  }
}

class ReportQuestionProps {
  const ReportQuestionProps({
    this.id,
    required this.questionId,
    required this.tutorId,
  });
  final String? id;
  final String questionId;
  final String tutorId;
}
