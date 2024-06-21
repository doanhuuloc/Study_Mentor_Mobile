import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/theme.dart';

class FileBox extends StatelessWidget {
  const FileBox({super.key, required this.file, required this.delete});

  final FilePickerResult file;
  final VoidCallback delete;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide()),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/svgs/file.svg",
                  height: 30,
                  width: 30,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        file.files.single.name,
                        style: Styles.s14().withWeight(FontWeight.w400),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "${(file.files.single.size / 1024 / 1024).toStringAsFixed(3)}mb",
                        style: Styles.s14().withWeight(FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.cancel_outlined),
            onPressed: delete,
          )
        ],
      ),
    );
  }
}
