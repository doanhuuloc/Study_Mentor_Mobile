import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/presentation/gen/assets.gen.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/theme.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/app_icon_button.dart';

class FileBox extends StatelessWidget {
  const FileBox({super.key, required this.name, required this.download});

  final String name;
  final VoidCallback download;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 10),
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
          AppIconButton(
            icon: Assets.svgs.uploadFile.svg(
              color: Colors.black,
              height: 25,
              width: 15,
            ),
            onTap: download,
          )
        ],
      ),
    );
  }
}
