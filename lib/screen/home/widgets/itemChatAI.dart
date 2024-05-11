import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ItemChatAI extends StatelessWidget {
  const ItemChatAI({
    super.key,
    required this.description,
    required this.dateTime,
    required this.route,
  });
  final String description;
  final DateTime dateTime;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () => context.go(route),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: SvgPicture.asset(
                    "assets/svgs/loader.svg",
                    height: 50,
                    width: 50,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        description,
                        style: TextStyle(
                            fontSize: 18, color: Colors.blue.shade300),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(DateFormat("hh:mm dd/mm/yyyy").format(dateTime)),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
