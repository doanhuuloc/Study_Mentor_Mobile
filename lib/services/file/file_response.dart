class FileResponse {
  const FileResponse({
    required this.fileKey,
    required this.fileName,
    required this.url,
  });
  final String fileKey;
  final String fileName;
  final String url;

  factory FileResponse.fromJson(Map<String, dynamic> json) {
    return FileResponse(
      fileKey: json['fileKey'],
      fileName: json['fileName'],
      url: json['url'],
    );
  }
}
