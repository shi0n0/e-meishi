import 'package:e_meishi/models/meishi.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:io';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class BigMeishiView extends StatelessWidget {
  final int meishiId;

  const BigMeishiView({super.key, required this.meishiId});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FutureBuilder(
        future: _loadImage(meishiId),
        builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
          // データの取得が進行中かどうかをチェック
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator()); // ローディングインジケーターを表示
          }

          // エラーが発生した場合
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          // データが存在しない場合やnullの場合
          if (!snapshot.hasData ||
              snapshot.data == null ||
              snapshot.data!.isEmpty) {
            return const Text('No image found');
          }

          // 画像を表示
          return Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 3)),
              child: InkWell(
                  onTap: () {
                    context.push('/detail');
                  },
                  child: Image.file(File(snapshot.data!))));
        },
      ),
    ]);
  }

  Future<String?> _loadImage(int id) async {
    final isar = Isar.getInstance(); // 既に開かれているIsarインスタンスを取得
    final meishi = await isar?.meishis.get(id); // 直接コレクションにアクセス
    final dir = await getApplicationDocumentsDirectory();
    final imageName = meishi?.imageName;

    // imageName が null または空の場合、空の文字列を返す
    if (imageName == null || imageName.isEmpty) {
      return '';
    }

    return '${dir.path}/camera/pictures/$imageName';
  }
}
