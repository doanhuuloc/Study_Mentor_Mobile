import 'package:dart_mappable/dart_mappable.dart';

part 'file_request.mapper.dart';

@MappableClass()
class FileRequest with FileRequestMappable {
  const FileRequest({
    this.fileName,
    this.fileKey,
  });

  final String? fileName;
  final String? fileKey;
}
