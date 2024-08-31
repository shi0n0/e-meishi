import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // 内部スクロールを無効にする
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // グリッドの列数
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1),
      itemCount: 6,
      itemBuilder: (context, index) {
        return _buildActivity(index); // 各アイテムをビルドするメソッドを呼び出し
      },
    );
  }
}

Widget _buildActivity(int index) {
  final activityData = [
    {'title': '名刺の枚数', 'value': '120'},
    {'title': '使用年数', 'value': '2年'},
    {'title': '交換した名刺', 'value': '45枚'},
    {'title': 'グループ参加', 'value': '3'},
    {'title': 'アクティビティ', 'value': '15回'},
    {'title': '保存した名刺', 'value': '30枚'}
  ];

  final data = activityData[index % activityData.length]; // 仮データを使用

  return Container(
    margin: const EdgeInsets.all(8),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data['title'] ?? '', style: const TextStyle(fontSize: 12)),
            Text(data['value'] ?? '', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    ),
  );
}
