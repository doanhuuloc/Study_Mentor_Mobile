import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text("Chat AI"),
          Text("gemini or gpt"),
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.abc,
              size: 50,
            ),
          )
        ],
      ),
    );
  }
}
