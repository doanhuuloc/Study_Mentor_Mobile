import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/presentation/gen/assets.gen.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/theme.dart';

class FileBox extends StatelessWidget {
  const FileBox({
    super.key,
    required this.name,
    required this.icon,
  });

  final String name;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Assets.svgs.file.svg(
                  width: 30,
                  height: 30,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Styles.s14().withWeight(FontWeight.w400),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          icon,
        ],
      ),
    );
  }
}
