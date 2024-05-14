import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';

import '../../../application/services/file/file.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../bloc_utils/safe_cubit/safe_cubit.dart';
import 'file_state.dart';

class FileCubit extends SafeCubit<FileState> {
  FileCubit({required this.failureHandlerManager, required this.fileController})
      : super(const FileState());

  final FailureHandlerManager failureHandlerManager;
  final FileController fileController;

  Future<SignedUrlResponse?> signedUrlFile(String fileName) async {
    final res = await fileController.getSignedUrl(
        signedUrlRequest: SignedUrlRequest(fileName: fileName));

    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      return res.right.data;
    }

    return null;
  }

  Future<FileRequest?> uploadFile(File file, String fileName) async {
    final signedUrlResponse = await signedUrlFile(fileName);
    if (signedUrlResponse == null) {
      return null;
    }

    final res = await fileController.uploadFile(
        uploadFileRequest: UploadFileRequest(
      file: file,
      signedUrl: signedUrlResponse.url ?? "",
    ));

    if (res.isLeft) {
      failureHandlerManager.handle(res.left);
    }

    if (res.isRight) {
      return FileRequest(
        fileKey: signedUrlResponse.fileKey,
        fileName: signedUrlResponse.fileName,
      );
    }

    return null;
  }

  Future<List<FileRequest>> uploadListFile(
      List<FilePickerResult> listFile) async {
    final List<FileRequest> result = [];
    final List<FileRequest?> files = await Future.wait(
      listFile.map((file) async {
        final fileres = await uploadFile(
          File(file.files.single.path ?? ""),
          file.files.single.name,
        );
        return fileres;
      }).toList(),
    );

    for (final element in files) {
      if (element != null) {
        result.add(element);
      }
    }

    return result;
  }
}
