import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:study_mentor_mobile/provider/user.dart';
import 'package:study_mentor_mobile/screen/home/widgets/settingBox.dart';

class MenuAppDrawer extends StatelessWidget {
  const MenuAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  width: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:
                              context.read<UserViewModel>().user.avatar != null
                                  ? FileImage(File(context
                                      .read<UserViewModel>()
                                      .user
                                      .avatar!)) as ImageProvider
                                  : const AssetImage("assets/imgs/user.png"),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(height: 5),
                Text(
                  context.watch<UserViewModel>().user.fullName,
                  style: const TextStyle(color: Colors.white),
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
                  func: () {
                    context.go("/editprofile");
                  },
                ),
                // SettingBox(
                //     title: "Change Password",
                //     svg: "lock-open.svg",
                //     func: () {}),
                SettingBox(
                  title: "Setting",
                  svg: "lock-open.svg",
                  func: () {
                    context.go("/setting");
                  },
                ),
                SettingBox(
                  title: "History",
                  svg: "history.svg",
                  func: () {
                    context.go("/history");
                  },
                ),
                // SettingBox(
                //   title: "Notifications",
                //   svg: "bell-ringing.svg",
                //   func: () {},
                // ),
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
    );
  }
}
