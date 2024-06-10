import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../gen/assets.gen.dart';
import '../../../shared/theme/theme.dart';

class IntrustorItem extends StatelessWidget {
  const IntrustorItem({
    super.key,
    required this.name,
    required this.numberOfStar,
    required this.voidCallback,
    required this.avatar,
  });
  final String name;
  final int numberOfStar;
  final VoidCallback voidCallback;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: voidCallback,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(Assets.images.ai.path))),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: Styles.s16().withWeight(FontWeight.w600),
                        ),
                        RatingBarIndicator(
                          itemBuilder: (context, index) =>
                              const Icon(Icons.star, color: Colors.orange),
                          rating: numberOfStar.toDouble(),
                          itemSize: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
