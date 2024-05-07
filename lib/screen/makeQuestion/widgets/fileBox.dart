import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FileBox extends StatelessWidget {
  const FileBox({super.key, required this.file, required this.delete});

  final FilePickerResult file;
  final VoidCallback delete;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide()),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "assets/svgs/file.svg",
                height: 30,
                width: 30,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    file.files.single.name,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "${(file.files.single.size / 1024 / 1024).toStringAsFixed(3)}mb",
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.cancel_outlined),
            onPressed: delete,
          )
        ],
      ),
    );
  }
}
