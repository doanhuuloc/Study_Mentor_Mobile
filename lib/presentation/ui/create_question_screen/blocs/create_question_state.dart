import 'package:file_picker/file_picker.dart';

import '../../../../application/services/education/education.dart';

class CreateQuestionState {
  const CreateQuestionState({
    this.loading = false,
    this.contentQuestionField = "",
    this.findingTimeField,
    this.numberOfStar,
    this.level,
    this.grade,
    this.subject,
    this.selectedVoucher,
    this.listFilePicker = const [],
    this.createQuestionResponse,
    this.calculatePriceReponse,
    this.structure,
    this.timeMeeting,
    this.vouchers,
  });

  final bool loading;
  final String contentQuestionField;
  final int? findingTimeField;
  final int? numberOfStar;
  final LevelResponse? level;
  final GradeResponse? grade;
  final SubjectResponse? subject;
  final VoucherReponse? selectedVoucher;
  final List<FilePickerResult> listFilePicker;
  final CreateQuestionResponse? createQuestionResponse;
  final CalculatePriceReponse? calculatePriceReponse;
  final List<LevelResponse>? structure;
  final List<VoucherReponse>? vouchers;
  final int? timeMeeting;

  bool get canSubmit {
    return subject != null &&
        numberOfStar != null &&
        findingTimeField != null &&
        contentQuestionField != "";
  }

  CreateQuestionState copyWith({
    bool? loading,
    String? contentQuestionField,
    int? findingTimeField,
    int? numberOfStar,
    LevelResponse? level,
    GradeResponse? grade,
    SubjectResponse? subject,
    VoucherReponse? selectedVoucher,
    List<FilePickerResult>? listFilePicker,
    CreateQuestionResponse? createQuestionResponse,
    CalculatePriceReponse? calculatePriceReponse,
    List<LevelResponse>? structure,
    List<VoucherReponse>? vouchers,
    int? timeMeeting,
  }) {
    return CreateQuestionState(
        loading: loading ?? this.loading,
        contentQuestionField: contentQuestionField ?? this.contentQuestionField,
        findingTimeField: findingTimeField ?? this.findingTimeField,
        numberOfStar: numberOfStar ?? this.numberOfStar,
        level: level ?? this.level,
        grade: grade == const GradeResponse() ? null : grade ?? this.grade,
        subject:
            subject == const SubjectResponse() ? null : subject ?? this.subject,
        selectedVoucher: selectedVoucher ?? this.selectedVoucher,
        listFilePicker: listFilePicker ?? this.listFilePicker,
        createQuestionResponse:
            createQuestionResponse ?? this.createQuestionResponse,
        calculatePriceReponse:
            calculatePriceReponse == const CalculatePriceReponse()
                ? null
                : calculatePriceReponse ?? this.calculatePriceReponse,
        structure: structure ?? this.structure,
        vouchers: vouchers ?? this.vouchers,
        timeMeeting: timeMeeting ?? this.timeMeeting);
  }
}
