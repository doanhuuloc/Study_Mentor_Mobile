import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:study_mentor_mobile/provider/user.dart';
import 'package:study_mentor_mobile/services/education/education_api.dart';
import 'package:study_mentor_mobile/shared/widget/selectOption.dart';

class CreateMeetScreen extends StatefulWidget {
  const CreateMeetScreen({super.key});

  @override
  State<CreateMeetScreen> createState() => _CreateMeetScreenState();
}

class _CreateMeetScreenState extends State<CreateMeetScreen> {
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
    level = response["data"];
    return response;
  }

  @override
  void initState() {
    super.initState();
    fecthData = _getStruture();
  }

  submit() async {
    await showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Wrap(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: const Text(
                      "Vui lòng thanh toán số tiền sau để tiếp tục giải đáp câu hỏi của bạn",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: const Text(
                      "100.000 đ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 30, right: 30, top: 10, bottom: 20),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Theme.of(context).primaryColor)),
                        onPressed: () {
                          context.go("/makequestion/findintrustor");
                        },
                        child: const Text(
                          "Thanh Toán",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
    // final data = CreateQuestionRequest(
    //   userId: context.read<UserViewModel>().user.id,
    //   subjectId: subjects!
    //       .firstWhere((element) => element["name"] == selectedSubject)["id"],
    //   timeAnswer: 15,
    //   content: _contentQuestionController.text,
    //   attachFiles: files,
    // );

    // context.read<UserViewModel>().currentQuestion = data;

    // final response = await EducationApi.createQuestion(
    //     data, context.read<UserViewModel>().user.accessToken);
    // print("hahah123 ${response}");
    // await showDialog(
    //     context: context,
    //     builder: (context) => AlertDialog(
    //           title: Text("Payment"),
    //           content:
    //               Text("Please pay ${response["data"]["price"]} to continue"),
    //         ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tạo phòng gg meet"),
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
