import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final listType = ['All', 'Intrustor', 'AI'];
  String selectType = 'All';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        padding: EdgeInsets.all(5),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    "assets/img/Logo.png",
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: listType.map((e) {
                    return ItemFitler(type: e, isSelected: e == selectType);
                  }).toList(),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            size: 40,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "asiduh fas9dung as9un gia iuasd bnipg sad aa a aaa a a ag",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.blue.shade300),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(DateFormat("hh:mm dd/mm/yyyy")
                                  .format(DateTime.now())),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            size: 40,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "asiduh fas9dung as9un gia iuasd bnipg sad aa a aaa a a ag",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.blue.shade300),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(DateFormat("hh:mm dd/mm/yyyy")
                                  .format(DateTime.now())),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            size: 40,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "asiduh fas9dung as9un gia iuasd bnipg sad aa a aaa a a ag",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.blue.shade300),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(DateFormat("hh:mm dd/mm/yyyy")
                                  .format(DateTime.now())),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            size: 40,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "asiduh fas9dung as9un gia iuasd bnipg sad aa a aaa a a ag",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.blue.shade300),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(DateFormat("hh:mm dd/mm/yyyy")
                                  .format(DateTime.now())),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemFitler extends StatelessWidget {
  const ItemFitler({
    super.key,
    required this.type,
    required this.isSelected,
  });

  final String type;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: isSelected
              ? const LinearGradient(
                  colors: [Color(0xffA0DAFB), Color(0xff0A8ED9)],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft)
              : null,
          color: !isSelected ? const Color(0xffF7F7F7) : null,
          boxShadow: isSelected
              ? [
                  const BoxShadow(
                      color: Color(0xff0A8ED9),
                      blurRadius: 5,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(2, 2))
                ]
              : null),
      child: Text(
        type,
        style: TextStyle(color: isSelected ? Colors.white : Colors.grey),
      ),
    );
  }
}
