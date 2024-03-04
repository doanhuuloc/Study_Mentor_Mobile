import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:intl/intl.dart';
import 'package:study_mentor_mobile/screen/home/widgets/settingBox.dart';

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
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        padding: const EdgeInsets.all(5),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(builder: (context) {
            return InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle),
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
                    "assets/img/Logo.png",
                  ),
                ),
                const Row(
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
      drawer: Drawer(
        // width: MediaQuery.of(context).size.width*0.5,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orange),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Đoàn Hữu Lộc",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  SettingBox(
                    title: "Profile",
                    svg: "user.svg",
                    func: () {},
                  ),
                  SettingBox(
                      title: "Change Password",
                      svg: "lock-open.svg",
                      func: () {}),
                  SettingBox(
                    title: "Setting",
                    svg: "lock-open.svg",
                    func: () {},
                  ),
                  SettingBox(
                    title: "Language",
                    svg: "world.svg",
                    func: () {},
                  ),
                  SettingBox(
                    title: "Notifications",
                    svg: "bell-ringing.svg",
                    func: () {},
                  ),
                  SettingBox(
                    title: "Logout",
                    svg: "logout.svg",
                    func: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
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
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
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
                        const Padding(
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
                        const Padding(
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
                        const Padding(
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
