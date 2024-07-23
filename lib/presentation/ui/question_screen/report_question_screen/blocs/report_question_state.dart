import 'package:file_picker/file_picker.dart';

import '../../../../../application/services/education/education.dart';

class ReportQuestionState {
  const ReportQuestionState({
    this.loading = false,
    this.content = "",
    this.listFilePicker = const [],
    this.reportFLowCompleted = false,
    this.reportQuestionResponse,
  });

  final bool loading;
  final String content;

  final List<FilePickerResult> listFilePicker;
  final bool reportFLowCompleted;
  final ReportQuestionResponse? reportQuestionResponse;

  bool get canSubmit {
    return content != "";
  }

  ReportQuestionState copyWith({
    bool? loading,
    String? content,
    List<FilePickerResult>? listFilePicker,
    bool? reportFLowCompleted,
    ReportQuestionResponse? reportQuestionResponse,
  }) {
    return ReportQuestionState(
      loading: loading ?? this.loading,
      content: content ?? this.content,
      listFilePicker: listFilePicker ?? this.listFilePicker,
      reportFLowCompleted: reportFLowCompleted ?? this.reportFLowCompleted,
      reportQuestionResponse:
          reportQuestionResponse ?? this.reportQuestionResponse,
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
