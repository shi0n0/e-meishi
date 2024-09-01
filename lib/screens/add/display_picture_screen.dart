import 'dart:io';
import 'package:isar/isar.dart';
import 'package:e_meishi/models/meishi.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:e_meishi/utils/utils.dart';

class DisplayPictureScreen extends StatelessWidget {
  const DisplayPictureScreen(
      {super.key,
      required this.imageName,
      required this.imagePath,
      required this.isar});
  final String imageName; //imageNameはIsarに保存。
  final String imagePath; //imagePathはプレビューにのみ使用。(都度絶対パスが変更される可能性があるため)
  final Isar isar;

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
                      onPressed: () async {
                        // ローディングダイアログを表示
                        showLoadingDialog(context, '処理中です');

                        try {
                          // 非同期処理
                          final meishi = Meishi()
                            ..imageName = imageName
                            ..addedTime = DateTime.now();

                          await isar.writeTxn(() async {
                            await isar.meishis.put(meishi);
                          });

                          if (context.mounted) {
                            Navigator.of(context, rootNavigator: true).pop();

                            showCheckDialog(context);
                          }
                        } catch (e) {
                          if (context.mounted) {
                            Navigator.of(context, rootNavigator: true).pop();

                            showErrorDialog(context, '$e');
                          }
                        }
                      },
                      child: const Text('保存'),
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
}
