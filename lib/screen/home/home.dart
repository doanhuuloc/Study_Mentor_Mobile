import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:study_mentor_mobile/screen/home/widgets/itemChatIntrustor.dart';
import 'package:study_mentor_mobile/shared/widget/customDivider.dart';

import '../../provider/user.dart';
import 'widgets/itemChatAI.dart';
import 'widgets/itemFilter.dart';
import 'widgets/menuAppDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final listType = ['All', 'Intrustor', 'AI'];
  String selectType = 'All';

  List<Map<String, dynamic>> listChat = [
    {
      "id": "1",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "type": "ai",
      "intrustor": "",
    },
    {
      "id": "2",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "type": "ai",
      "intrustor": "",
    },
    {
      "id": "3",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "type": "ai",
      "intrustor": "",
    },
    {
      "id": "4",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "type": "intrustor",
      "intrustor": "locno63",
    },
    {
      "id": "5",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "type": "intrustor",
      "intrustor": "doan huu loc",
    },
    {
      "id": "6",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "type": "intrustor",
      "intrustor": "loc huu doan",
    },
  ];

  changeType(String type) {
    setState(() {
      if (type != selectType) {
        selectType = type;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: InkWell(
      //   onTap: () => context.go('/chat'),
      //   child: Container(
      //     decoration:
      //         const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      //     padding: const EdgeInsets.all(5),
      //     child: const Icon(
      //       Icons.add,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.transparent,
          elevation: 0,
          
          leading: Builder(builder: (context) {
            return GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: context.read<UserViewModel>().user.avatar != null
                          ? FileImage(File(
                                  context.read<UserViewModel>().user.avatar!))
                              as ImageProvider
                          : AssetImage("assets/imgs/user.png"),
                      fit: BoxFit.fill,
                    )),
              ),
            );
          }),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/imgs/Logo.png",
                  ),
                ),
                const Row(
                  children: [
                    // Icon(
                    //   Icons.search,
                    //   color: Colors.black,
                    // ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.black,
                    )
                  ],
                )
              ],
            ),
          )),
      drawer: const MenuAppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Các câu hỏi gần nhất",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const CustomDivider(),
              Container(
                height: 200,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: listChat.map((e) {
                      return e["type"] == "ai"
                          ? ItemChatAI(
                              description: e['description'],
                              dateTime: e['datetime'],
                              route: '/chat',
                            )
                          : ItemChatIntrustor(
                              description: e['description'],
                              dateTime: e['datetime'],
                              route: '/chat',
                              intrustorName: e["intrustor"],
                            );
                    }).toList(),
                  ),
                ),
              ),
              const Text(
                "Đặt câu hỏi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const CustomDivider(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () => context.go("/chat"),
                  child: Row(children: [
                    Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/imgs/AI.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Trả lời bằng AI",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          Text(
                            "1. chat để giải đáp bài tập",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () => context.go("/makequestion"),
                  child: Row(children: [
                    Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/imgs/AIPRE.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Trả lời bằng AI Prenium",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        // const Text(
                        //   "1. chat để giải đáp bài tập",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.normal),
                        // ),
                        // const Text(
                        //   "2. Có thể gữi file tài liệu hoặc hình ảnh để giải đáp bài tập",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.normal),
                        // ),
                      ],
                    )
                  ]),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () => context.go("/makequestion"),
                  child: Row(children: [
                    Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/imgs/Intrustor.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Giải đáp với người hướng dẫn",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        // const Text(
                        //   "1. chat để giải đáp bài tập",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.normal),
                        // ),
                        // const Text(
                        //   "2. Có thể gữi file tài liệu hoặc hình ảnh để giải đáp bài tập",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.normal),
                        // ),
                        // const Text(
                        //   "2. Có thể trực tiếp giải đáp bài tập thông qua ggmeet",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.normal),
                        // ),
                      ],
                    )
                  ]),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () => context.go("/createmeet"),
                  child: Row(children: [
                    Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/imgs/ggmeet.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Giải đáp thông qua gg meet",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        // const Text(
                        //   "1. chat để giải đáp bài tập",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.normal),
                        // ),
                        // const Text(
                        //   "2. Có thể gữi file tài liệu hoặc hình ảnh để giải đáp bài tập",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.normal),
                        // ),
                        // const Text(
                        //   "2. Có thể trực tiếp giải đáp bài tập thông qua ggmeet",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.normal),
                        // ),
                      ],
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
