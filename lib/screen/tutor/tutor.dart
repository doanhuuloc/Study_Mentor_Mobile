import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/services/tutor/tutor_api.dart';
import 'package:study_mentor_mobile/services/user/user_api.dart';

class TutorScreen extends StatefulWidget {
  const TutorScreen({super.key});

  @override
  State<TutorScreen> createState() => _TutorScreenState();
}

class _TutorScreenState extends State<TutorScreen> {
  late final fecthData;
  late final tutorInfo;
  late final tutorEducationInterest;

  Future initData() async {
    String id = "de149c7e-3550-4c73-bec2-93ad9d98f058";
    final responseInfo = await UserApi.getUserInfo(id);
    final responseEducation = await TutorApi.getTutorEducationInterest(id);

    print("haha ${responseInfo["data"]}");
    print("haha ${responseEducation["data"]}");

    tutorInfo = responseInfo["data"];
    tutorEducationInterest = responseEducation["data"];
    return "1";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fecthData = initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutor"),
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
              return SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        height: 150,
                        // width: 200,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/imgs/user.png"),
                                fit: BoxFit.fill)),
                      ),
                      const Text(
                        "Thông tin cá nhân",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      LineInfo(
                          title: "Họ và tên", content: tutorInfo["fullName"]),
                      LineInfo(title: "Email", content: tutorInfo["email"]),
                      LineInfo(
                          title: "Số điện thoại",
                          content: tutorInfo["phone"] ?? ""),
                      LineInfo(
                          title: "Ngày sinh",
                          content: tutorInfo["dateOfBirth"] ?? ""),
                      LineInfo(
                          title: "Giới tính",
                          content: tutorInfo["gender"].toString()),
                      const Text(
                        "Thông tin Giáo dục quan tâm",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      LineInfo(
                          title: "Cấp bậc",
                          content: tutorEducationInterest["levels"][0]["name"]),
                      LineInfo(
                          title: "Khối/Lớp",
                          content: tutorEducationInterest["grades"][0]["name"]),
                      LineInfo(
                          title: "Chủ đề",
                          content: tutorEducationInterest["subjects"][0]
                              ["name"])
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}

class LineInfo extends StatelessWidget {
  const LineInfo({super.key, required this.title, required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(
            content,
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
