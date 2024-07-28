import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DisplayPictureScreen extends StatelessWidget {
  const DisplayPictureScreen({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        // falseを返すことでスワイプで戻る機能を無効化
        return Future.value();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('撮影した写真'),
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          children: [
            Image.file(File(imagePath)),
            Positioned(
              bottom: 20, // 画像の下からの距離を指定
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        context.pop(); // 撮り直しボタンを押すとカメラ画面に戻る
                      },
                      child: const Text('撮り直し'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        _showLoadingDialog(context);
                      },
                      child: const Text('確定'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Dialog(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 20),
                Text("Loading..."),
              ],
            ),
          ),
        );
      },
    );
  }
}
