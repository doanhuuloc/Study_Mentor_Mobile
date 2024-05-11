import 'package:dart_mappable/dart_mappable.dart';

part 'signed_url_response.mapper.dart';

@MappableClass()
class SignedUrlResponse with SignedUrlResponseMappable {
  const SignedUrlResponse({
    this.fileKey,
    this.fileName,
    this.url,
  });

  factory SignedUrlResponse.fromJson(Map<String, dynamic> json) =>
      SignedUrlResponseMapper.fromJson(json);

  final String? fileKey;
  final String? fileName;
  final String? url;
}
