import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingBox extends StatelessWidget {
  const SettingBox({
    super.key,
    required this.title,
    required this.svg,
    required this.func,
  });
  final String title;
  final String svg;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor.withOpacity(0.1)),
                child: SvgPicture.asset(
                  "assets/svgs/$svg",
                  color: Theme.of(context).primaryColor,
                  height: 20,
                  width: 20,
                )),
            const SizedBox(width: 10),
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
