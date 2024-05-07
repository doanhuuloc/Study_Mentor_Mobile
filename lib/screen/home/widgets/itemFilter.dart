import 'package:flutter/material.dart';

class ItemFitler extends StatelessWidget {
  const ItemFitler({
    super.key,
    required this.type,
    required this.isSelected,
    required this.function,
  });

  final String type;
  final bool isSelected;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function(type);
      },
      child: Container(
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
      ),
    );
  }
}
