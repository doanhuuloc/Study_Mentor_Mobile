import 'package:file_picker/file_picker.dart';

class ReportQuestionState {
  const ReportQuestionState({
    this.loading = false,
    this.content = "",
    this.listFilePicker = const [],
  });

  final bool loading;
  final String content;

  final List<FilePickerResult> listFilePicker;

  bool get canSubmit {
    return content != "";
  }

  ReportQuestionState copyWith({
    bool? loading,
    String? content,
    List<FilePickerResult>? listFilePicker,
  }) {
    return ReportQuestionState(
      loading: loading ?? this.loading,
      content: content ?? this.content,
      listFilePicker: listFilePicker ?? this.listFilePicker,
    );
  }
}
