import 'package:dart_mappable/dart_mappable.dart';

part 'file_response.mapper.dart';

@MappableClass()
class FileResponse with FileResponseMappable {
  const FileResponse({
    this.fileName,
    this.fileKey,
  });

  final String? fileName;
  final String? fileKey;
}
