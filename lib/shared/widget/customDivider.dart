import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider(
      {super.key,
      this.height = 1,
      this.left = 0,
      this.right = 0,
      this.color = const Color(0xFFD5DDE0)});
  final double height;
  final double left;
  final double right;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: left, right: right),
      height: 1,
      decoration: BoxDecoration(color: color),
    );
  }
}
