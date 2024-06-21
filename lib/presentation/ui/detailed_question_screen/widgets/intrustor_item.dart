import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../gen/assets.gen.dart';
import '../../../shared/theme/theme.dart';

class IntrustorItem extends StatelessWidget {
  const IntrustorItem({
    super.key,
    this.loading = false,
    this.name,
    this.numberOfStar,
    this.voidCallback,
  });
  final bool loading;
  final String? name;
  final int? numberOfStar;
  final VoidCallback? voidCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
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
                  if (loading)
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    )
                  else
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
                          if (loading)
                            Container(
                              height: 16,
                              width: 200,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            )
                          else
                            Text(
                              name ?? "",
                              style: Styles.s16().withWeight(FontWeight.w600),
                            ),
                          const SizedBox(height: 5),
                          if (loading)
                            Container(
                              height: 24,
                              width: 140,
                              decoration:
                                  const BoxDecoration(color: Colors.black),
                            )
                          else
                            RatingBarIndicator(
                              itemBuilder: (context, index) =>
                                  const Icon(Icons.star, color: Colors.orange),
                              rating: numberOfStar?.toDouble() ?? 0,
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
      ),
    );
  }
}
