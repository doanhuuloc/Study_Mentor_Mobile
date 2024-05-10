import 'dart:io';

import 'package:study_mentor_mobile/services/file/file_request.dart';
import 'package:study_mentor_mobile/services/file/uploadFile.dart';

class FileUploader {
  FileUploader({
    required this.token,
  });
  final String token;

  Future<List<FileRequest>> uploadImages(List<File> files) async {
    final List<FileRequest> result = [];
    final List<FileRequest?> images = await Future.wait(
      files.map((file) {
        final image = uploadImage(file);
        return image;
      }).toList(),
    );

    for (final element in images) {
      if (element != null) {
        result.add(element);
      }
    }

    return result;
  }

  Future<FileRequest?> uploadImage(File file) async {
    String fileName = file.path.split('/').last;
    final getUrlResult = await UploadFileApi.signedUrl(fileName, token);

    if (getUrlResult == null) {
      // báo lỗi
      return null;
    }
    final uploadUrl = getUrlResult.data.url;

    final uploadFileToS3 = await UploadFileApi.updateFile(
      file,
      uploadUrl,
    );

    if (uploadFileToS3 == null) {
      return null;
    }

    return FileRequest(
      fileKey: getUrlResult.data.fileKey,
      fileName: getUrlResult.data.fileName,
    );
  }
}
