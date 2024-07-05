import 'dart:io';

import 'package:image_picker/image_picker.dart';

Future<File?> pickSingleImage(
    {ImageSource source = ImageSource.gallery}) async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: source);
  if (image == null) {
    return null;
  }
  return File(image.path);
}

Future<List<XFile>?> pickMutiImageXFile(
    {ImageSource source = ImageSource.gallery}) async {
  final ImagePicker picker = ImagePicker();
  final List<XFile> images = await picker.pickMultiImage();
  if (images == []) {
    return null;
  }
  return images;
}

Future<XFile?> pickSignlemageXFile(
    {ImageSource source = ImageSource.gallery}) async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: source);
  if (image == null) {
    return null;
  }
  return image;
}
