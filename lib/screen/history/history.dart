import 'package:flutter/material.dart';

import '../home/widgets/itemChatAI.dart';
import '../home/widgets/itemChatIntrustor.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  final listType = ['AI', 'AIPrenium', 'Intrustor'];
  int selectType = 0;

  List<Map<String, dynamic>> listChatAI = [
    {
      "id": "1",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
    {
      "id": "2",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
    {
      "id": "3",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
    {
      "id": "4",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
    {
      "id": "5",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
    {
      "id": "6",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
  ];
  List<Map<String, dynamic>> listChatAIPre = [
    {
      "id": "1",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
    {
      "id": "2",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
    {
      "id": "3",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
    {
      "id": "4",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
    {
      "id": "5",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
    {
      "id": "6",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
    },
  ];
  List<Map<String, dynamic>> listChatIntrustor = [
    {
      "id": "1",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "intrustor": "locno63",
    },
    {
      "id": "2",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "intrustor": "locno63",
    },
    {
      "id": "3",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "intrustor": "locno63",
    },
    {
      "id": "4",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "intrustor": "locno63",
    },
    {
      "id": "5",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "intrustor": "doan huu loc",
    },
    {
      "id": "6",
      "description":
          "Data Storytelling là gì? 5+ Cách để trực quan nội dung câu chuyện thú vị hơn",
      "datetime": DateTime.now(),
      "intrustor": "loc huu doan",
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Color.fromARGB(64, 158, 158, 158),
              ),
              child: TabBar.secondary(
                  controller: _tabController,
                  indicator: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12))),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  onTap: (value) => {
                        setState(() {
                          selectType = value;
                        })
                      },
                  tabs: const [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AI",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AI Prenium",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Intrustor",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            SingleChildScrollView(
              child: Column(
                children: selectType == 2
                    ? listChatIntrustor
                        .map((e) => ItemChatIntrustor(
                              description: e['description'],
                              dateTime: e['datetime'],
                              route: '/chat',
                              intrustorName: e["intrustor"],
                            ))
                        .toList()
                    : selectType == 1
                        ? listChatAIPre
                            .map((e) => ItemChatAI(
                                  description: e['description'],
                                  dateTime: e['datetime'],
                                  route: '/chat',
                                ))
                            .toList()
                        : listChatAI
                            .map((e) => ItemChatAI(
                                  description: e['description'],
                                  dateTime: e['datetime'],
                                  route: '/chat',
                                ))
                            .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
