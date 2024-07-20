import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DisplayPictureScreen extends StatelessWidget {
  const DisplayPictureScreen({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Stack(
      children: [
        Center(child: Image.file(File(imagePath))),
        ElevatedButton(
          onPressed: () {
            context.pop(); // 撮り直しボタンを押すとカメラ画面に戻る
          },
          child: const Text('撮り直し'),
        ),
      ],
    );
  }
}
