import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../gen/locale/app_localizations.dart';
import '../../../shared/widgets/app_list_tile.dart';
import '../../../shared/widgets/model_route_pages/bottom_sheet_page.dart';
import '../../../utilities/image_picker_func.dart';

class ImagePickerSheet {
  const ImagePickerSheet._();

  static Page<void> buildPage(
    BuildContext context, {
    required LocalKey key,
  }) {
    return BottomSheetPage(
      key: key,
      contentBuilder: (_) {
        return const _ImagePickerSheet();
      },
    );
  }
}

class _ImagePickerSheet extends StatelessWidget {
  const _ImagePickerSheet();

  void _pickImage(BuildContext context, ImageSource source) async {
    final File? image = await pickSingleImage(source: source);
    if (!context.mounted) {
      return;
    }
    if (image != null) {
      context.pop(image);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppListTile(
          title: Text(
            S.of(context).takePicture,
          ),
          onTap: () {
            _pickImage(context, ImageSource.camera);
          },
        ),
        AppListTile(
          title: Text(
            S.of(context).pickFromGallery,
          ),
          onTap: () {
            _pickImage(context, ImageSource.gallery);
          },
        ),
      ],
    );
  }
}
