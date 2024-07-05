import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../gen/locale/app_localizations.dart';
import '../app_list_tile.dart';
import '../model_route_pages/bottom_sheet_page.dart';
import '../../../utilities/image_picker_func.dart';

class FilePickerSheet {
  const FilePickerSheet._();

  static Page<void> buildPage(
    BuildContext context, {
    required LocalKey key,
  }) {
    return BottomSheetPage(
      key: key,
      contentBuilder: (_) {
        return const _FilePickerSheet();
      },
    );
  }
}

class _FilePickerSheet extends StatelessWidget {
  const _FilePickerSheet();

  void _takePicture(BuildContext context) async {
    final XFile? image = await pickSignlemageXFile(source: ImageSource.camera);
    if (!context.mounted) {
      return;
    }
    if (image != null) {
      context.pop(image);
      return;
    }
  }

  void _pickImage(BuildContext context) async {
    final List<XFile>? image = await pickMutiImageXFile();
    if (!context.mounted) {
      return;
    }
    if (image != null) {
      context.pop(image);
      return;
    }
  }

  void _pickFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (!context.mounted) {
      return;
    }

    if (result != null) {
      context.pop(result);
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
            _takePicture(context);
          },
        ),
        AppListTile(
          title: Text(
            S.of(context).pickFromGallery,
          ),
          onTap: () {
            _pickImage(context);
          },
        ),
        // AppListTile(
        //   title: Text(
        //     S.of(context).pickFile,
        //   ),
        //   onTap: () {
        //     _pickFile(context);
        //   },
        // ),
      ],
    );
  }
}
