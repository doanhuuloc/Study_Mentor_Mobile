import 'package:dart_mappable/dart_mappable.dart';

part 'file_reponse.mapper.dart';

@MappableClass()
class FileReponse with FileReponseMappable {
  const FileReponse({
    this.fileName,
    this.fileKey,
  });

  final String? fileName;
  final String? fileKey;
}
