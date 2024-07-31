import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:study_mentor_mobile/application/services/app/app_config/app_config.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../shared/base_infinite_loading/image_loading.dart';
import '../../../../shared/theme/theme.dart';

class IntrustorItem extends StatelessWidget {
  const IntrustorItem({
    super.key,
    required this.name,
    required this.numberOfStar,
    required this.voidCallback,
    required this.avatar,
    this.loading = false,
  });
  final bool loading;
  final String name;
  final int numberOfStar;
  final VoidCallback voidCallback;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    print("${context.read<AppConfig>().imagePath}/$avatar");
    const helperImage = ImageLoading(
      width: 60,
      height: 60,
    );
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
                    image: avatar == ""
                        ? DecorationImage(
                            image: AssetImage(Assets.images.ai.path))
                        : null,
                  ),
                  child: avatar != ""
                      ? ClipOval(
                          child: Image.network(
                            "${context.read<AppConfig>().imagePath}/$avatar",
                            fit: BoxFit.cover,
                            loadingBuilder: helperImage.loadingBuilder,
                            errorBuilder: helperImage.errorBuilder,
                          ),
                        )
                      : null,
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
                            decoration:
                                const BoxDecoration(color: Colors.black),
                          )
                        else
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
