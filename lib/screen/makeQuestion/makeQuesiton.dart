import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:study_mentor_mobile/provider/user.dart';
import 'package:study_mentor_mobile/services/education/education_api.dart';
import 'package:study_mentor_mobile/shared/widget/customTextField.dart';
import 'package:study_mentor_mobile/screen/makeQuestion/widgets/fileBox.dart';
import 'package:study_mentor_mobile/shared/widget/selectOption.dart';

class MakeQuestionScreen extends StatefulWidget {
  const MakeQuestionScreen({super.key});

  @override
  State<MakeQuestionScreen> createState() => _MakeQuestionScreenState();
}

class _MakeQuestionScreenState extends State<MakeQuestionScreen> {
  final TextEditingController _contentQuestionController =
      TextEditingController();
  final FocusNode _focusNodeContentQuestion = FocusNode();
  bool _isFocusContentQuestion = false;

  List<FilePickerResult> files = [];

  late List<dynamic> level;
  String? selectedLevel;

  List<dynamic>? grades;
  String? selectedGrade;

  List<dynamic>? subjects;
  String? selectedSubject;

  List<String> time = ["15p", "30p", "45p", "60p"];
  String? selectedTime;

  late final fecthData;

  Future<dynamic> _getStruture() async {
    final response = await EducationApi.getStrutureEducation(
        context.read<UserViewModel>().user.accessToken);
    print("hahaha ${response["data"]}");
    level = response["data"];
    return response;
  }

  @override
  void initState() {
    super.initState();
    fecthData = _getStruture();
    _focusNodeContentQuestion.addListener(() {
      setState(() {
        _isFocusContentQuestion = _focusNodeContentQuestion.hasFocus;
      });
    });
  }

  pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        files.add(result);
      });
      print("hahah ${result.files.single.name}");
    } else {}
  }

  submit() async {
    final data = CreateQuestionRequest(
      userId: context.read<UserViewModel>().user.id,
      subjectId: subjects!
          .firstWhere((element) => element["name"] == selectedSubject)["id"],
      timeAnswer: 15,
      content: _contentQuestionController.text,
      attachFiles: files,
    );

    context.read<UserViewModel>().currentQuestion = data;

    final response = await EducationApi.createQuestion(
        data, context.read<UserViewModel>().user.accessToken);
    print("hahah123 $response");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Study Mentor AI"),
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: FutureBuilder(
          future: fecthData,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      const Text(
                        "Content Question",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      CustomTextField(
                          controller: _contentQuestionController,
                          focusNode: _focusNodeContentQuestion,
                          isfocus: _isFocusContentQuestion,
                          textInputType: TextInputType.multiline,
                          fillColor: Colors.transparent,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minLines: 1,
                          maxLines: null,
                          validator: () {
                            return null;
                          }),
                      const SizedBox(height: 20),
                      const Text(
                        "File Question",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        children: files
                            .map((e) => FileBox(
                                  file: e,
                                  delete: () {
                                    setState(() {
                                      files.removeWhere(
                                          (element) => element == e);
                                    });
                                  },
                                ))
                            .toList(),
                      ),
                      DottedBorder(
                          color: Theme.of(context).primaryColor,
                          borderType: BorderType.RRect,
                          padding: const EdgeInsets.all(12),
                          radius: const Radius.circular(6),
                          dashPattern: const [6],
                          strokeWidth: 2,
                          child: InkWell(
                            onTap: () async => await pickFile(),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/svgs/upload_file.svg",
                                height: 50,
                                width: 50,
                              ),
                            ),
                          )),
                      const SizedBox(height: 20),
                      const Text(
                        "Question Level",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 20),
                      SelectOption(
                        focusNode: FocusNode(),
                        selectedOption: selectedLevel,
                        placeholder: "Selected Level",
                        updateSelecedOption: (String value) {
                          setState(() {
                            selectedLevel = value;
                            selectedSubject = null;
                            subjects = null;
                            selectedGrade = null;
                            final currentLevel = level.firstWhere(
                                (element) => element["levelName"] == value);
                            grades = currentLevel["grades"];
                          });
                        },
                        options:
                            level.map((e) => e["levelName"] as String).toList(),
                      ),
                      if (grades != null) const SizedBox(height: 20),
                      if (grades != null)
                        SelectOption(
                          focusNode: FocusNode(),
                          selectedOption: selectedGrade,
                          placeholder: "Selected Class",
                          updateSelecedOption: (String value) {
                            setState(() {
                              selectedGrade = value;
                              selectedSubject = null;
                              final currentGrade = grades!.firstWhere(
                                  (element) => element["gradeName"] == value);
                              subjects = currentGrade["subjects"];
                            });
                          },
                          options: grades!
                              .map((e) => e["gradeName"] as String)
                              .toList(),
                        ),
                      if (subjects != null) const SizedBox(height: 20),
                      if (subjects != null)
                        SelectOption(
                          focusNode: FocusNode(),
                          selectedOption: selectedSubject,
                          placeholder: "Selected Subject",
                          updateSelecedOption: (String value) {
                            setState(() {
                              selectedSubject = value;
                            });
                          },
                          options: subjects!
                              .map((e) => e["name"] as String)
                              .toList(),
                        ),
                      const SizedBox(height: 20),
                      const Text(
                        "Answering time",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 20),
                      SelectOption(
                        focusNode: FocusNode(),
                        selectedOption: selectedTime,
                        placeholder: "Selected Answering Time",
                        updateSelecedOption: (String value) {
                          setState(() {
                            selectedTime = value;
                          });
                        },
                        options: time,
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              backgroundColor: MaterialStatePropertyAll(
                                  Theme.of(context).primaryColor),
                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 15))),
                          onPressed: () async {
                            await submit();
                            context.go("/makequestion/findintrustor");
                          },
                          child: const Text(
                            "Continue",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}
