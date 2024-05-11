import 'package:dart_mappable/dart_mappable.dart';

part 'signed_url_request.mapper.dart';

@MappableClass()
class SignedUrlRequest with SignedUrlRequestMappable {
  const SignedUrlRequest({
    this.fileName,
  });

  final String? fileName;
}
