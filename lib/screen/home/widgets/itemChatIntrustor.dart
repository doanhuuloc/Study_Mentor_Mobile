import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ItemChatIntrustor extends StatelessWidget {
  const ItemChatIntrustor({
    super.key,
    required this.description,
    required this.dateTime,
    required this.route,
    required this.intrustorName,
  });
  final String description;
  final DateTime dateTime;
  final String route;
  final String intrustorName;

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
                    padding: EdgeInsets.only(right: 5),
                    child: Image.asset(
                      "assets/imgs/user.png",
                      height: 50,
                      width: 50,
                    )),
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
                      Row(
                        children: [
                          Text(
                            intrustorName,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            DateFormat("hh:mm dd/mm/yyyy").format(dateTime),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
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
