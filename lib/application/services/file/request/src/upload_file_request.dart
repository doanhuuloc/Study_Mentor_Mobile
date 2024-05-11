import 'dart:io';
import 'package:dart_mappable/dart_mappable.dart';

part 'upload_file_request.mapper.dart';

@MappableClass()
class UploadFileRequest with UploadFileRequestMappable {
  const UploadFileRequest({required this.file, required this.signedUrl});

  final File file;
  final String signedUrl;
}
