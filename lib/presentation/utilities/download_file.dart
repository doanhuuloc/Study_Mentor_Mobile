import 'package:flutter_downloader/flutter_downloader.dart';

Future<void> downloadFile({required String url, required String fileName}) async {
  String directorys = "/storage/emulated/0/Download/";

  await FlutterDownloader.enqueue(
    url: url,
    headers: {},
    savedDir: directorys,
    showNotification: true,
    openFileFromNotification: true,
    fileName: fileName,
  );
}
