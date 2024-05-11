import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:study_mentor_mobile/provider/user.dart';
import 'package:study_mentor_mobile/screen/answer/widgets/fileBox.dart';
import 'package:study_mentor_mobile/services/education/education_api.dart';

import '../../shared/widget/customTextField.dart';

class AnswerScreen extends StatefulWidget {
  const AnswerScreen({super.key});

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  final FocusNode _focusNodeContentQuestion = FocusNode();
  bool _isFocusContentQuestion = false;

  final FocusNode _focusNodeContentAnswer = FocusNode();
  bool _isFocusContentAnswer = false;

  final TextEditingController _reviewsController = TextEditingController();
  final FocusNode _focusNodeReview = FocusNode();
  bool _isFocusReview = false;

  late final CreateQuestionRequest question;

  @override
  void initState() {
    super.initState();
    question = context.read<UserViewModel>().currentQuestion!;

    _focusNodeContentQuestion.addListener(() {
      setState(() {
        _isFocusContentQuestion = _focusNodeContentQuestion.hasFocus;
      });
    });

    _focusNodeContentAnswer.addListener(() {
      setState(() {
        _isFocusContentAnswer = _focusNodeContentAnswer.hasFocus;
      });
    });

    _focusNodeReview.addListener(() {
      setState(() {
        _isFocusReview = _focusNodeReview.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Answer"),
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
      ),
      bottomSheet: InkWell(
        onTap: () async {
          await showDialog<dynamic>(
            context: context,
            builder: (context) {
              return Dialog(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                child: Wrap(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            "Reviews",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Image.asset(
                            "assets/imgs/user.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "LOC DOAN",
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RatingBar.builder(
                                  allowHalfRating: true,
                                  itemBuilder: (context, index) => const Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                  onRatingUpdate: (value) {}),
                            ],
                          ),
                          CustomTextField(
                              controller: _reviewsController,
                              focusNode: _focusNodeReview,
                              isfocus: _isFocusReview,
                              hintText: "Nhập chi tiết đánh giá",
                              hintStyle: const TextStyle(color: Colors.black),
                              textInputType: TextInputType.multiline,
                              fillColor: Colors.transparent,
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              minLines: 2,
                              maxLines: null,
                              validator: () {
                                return null;
                              }),
                          const SizedBox(height: 20),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 10),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                "Send",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10)
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(12)),
          child: const Text(
            "Done",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/imgs/user.png",
                          height: 80,
                          width: 80,
                          fit: BoxFit.fill,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      context
                                          .read<UserViewModel>()
                                          .user
                                          .fullName,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: 1,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              border: Border.all()),
                                        ),
                                        const Text("23 tuoi"),
                                      ],
                                    )
                                  ],
                                ),
                                RatingBarIndicator(
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.orange),
                                  rating: 5,
                                  itemSize: 24,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text("Tag"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Text(
                "Content Question",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              CustomTextField(
                  controller: TextEditingController(text: question.content),
                  focusNode: _focusNodeContentQuestion,
                  isfocus: _isFocusContentQuestion,
                  textInputType: TextInputType.multiline,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  readOnly: true,
                  minLines: 1,
                  maxLines: null,
                  validator: () {
                    return null;
                  }),
              if (question.attachFiles != [])
                const Text(
                  "File Question",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              Column(
                children:
                    question.attachFiles.map((e) => FileBox(file: e)).toList(),
              ),
              const Text(
                "Answer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              CustomTextField(
                  controller: TextEditingController(text: "trả lời"),
                  focusNode: _focusNodeContentAnswer,
                  isfocus: _isFocusContentAnswer,
                  textInputType: TextInputType.multiline,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  readOnly: true,
                  minLines: 1,
                  maxLines: null,
                  validator: () {
                    return null;
                  }),
              const Text(
                "File Answer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
