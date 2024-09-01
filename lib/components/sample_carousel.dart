import 'package:flutter/material.dart';

class SampleCarousel extends StatelessWidget {
  final String title;
  final List<String> imageUrls; // 画像URLのリスト

  const SampleCarousel(
      {super.key, required this.title, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130, // カルーセル全体の高さを指定
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0), // テキストに左右の余白を追加
            child: Text(
              title, // カルーセルのタイトル
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: imageUrls.isNotEmpty
                ? ListView.builder(
                    scrollDirection: Axis.horizontal, // 横方向にスクロール
                    itemCount: imageUrls.length, // アイテム数を画像リストの長さに設定
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: AspectRatio(
                          aspectRatio: 8 / 5, // アイテムのアスペクト比を指定
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5), // 角丸の半径を指定
                            child: Image.network(
                              imageUrls[index], // 画像のURLを表示
                              fit: BoxFit.cover, // 画像をコンテナ全体にフィット
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : const Center(
                    child: Text('画像がありません'), // 画像リストが空の場合の表示
                  ),
          ),
        ],
      ),
    );
  }
}
