import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../gen/app_colors.dart';
import '../../../shared/theme/theme.dart';

class ChooseFileBottomSheet extends StatelessWidget {
  const ChooseFileBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Ink(
          decoration: BoxDecoration(
            color: AppColors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () async {
                      final XFile? photo = await ImagePicker()
                          .pickImage(source: ImageSource.camera);
                      Navigator.of(context).pop(photo);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Chụp ảnh",
                        style: Styles.s16().withWeight(FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () async {
                      final XFile? image = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      Navigator.of(context).pop(image);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Thư viện ảnh",
                        style: Styles.s16().withWeight(FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () async {
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles();

                      if (result != null) {
                        File file = File(result.files.single.path!);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Chọn File",
                        style: Styles.s16().withWeight(FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Hủy",
                        style: Styles.s16()
                            .withWeight(FontWeight.w600)
                            .withColor(AppColors.red),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ))
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
