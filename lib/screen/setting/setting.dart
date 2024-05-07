import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  "assets/svgs/setting_user.svg",
                  height: 30,
                  width: 30,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Change Password",
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        children: [
                          Text("Vietnam"),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/svgs/setting_user.svg",
                  height: 24,
                  width: 40,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Notifications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Notification",
                        style: TextStyle(fontSize: 16),
                      ),
                      FlutterSwitch(
                        value: true,
                        onToggle: (value) {},
                        height: 20,
                        width: 40,
                        padding: 2,
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Dark Theme",
                        style: TextStyle(fontSize: 16),
                      ),
                      FlutterSwitch(
                        value: true,
                        onToggle: (value) {},
                        height: 20,
                        width: 40,
                        padding: 2,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
