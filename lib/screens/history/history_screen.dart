import 'package:e_meishi/components/big_meishi_view.dart';
import 'package:e_meishi/components/grid_cards.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});

  final List<Map<String, String>> list = [
    {'imageUrl': 'https://placehold.jp/380x240.png', 'addedTime': '2024-09-01'},
    {'imageUrl': 'https://placehold.jp/360x230.png', 'addedTime': '2024-08-30'},
    {'imageUrl': 'https://placehold.jp/340x220.png', 'addedTime': '2024-08-28'},
    {'imageUrl': 'https://placehold.jp/320x210.png', 'addedTime': '2024-08-25'},
    {'imageUrl': 'https://placehold.jp/300x200.png', 'addedTime': '2024-08-20'},
    {'imageUrl': 'https://placehold.jp/280x190.png', 'addedTime': '2024-08-18'},
    {'imageUrl': 'https://placehold.jp/260x180.png', 'addedTime': '2024-08-15'},
    {'imageUrl': 'https://placehold.jp/240x170.png', 'addedTime': '2024-08-10'},
    {'imageUrl': 'https://placehold.jp/220x160.png', 'addedTime': '2024-08-05'},
    {'imageUrl': 'https://placehold.jp/200x150.png', 'addedTime': '2024-08-01'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('名刺履歴'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: FittedBox(
                  child: Text(
                    '現在の名刺',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Hiragino Sans',
                    ),
                  ),
                ),
              ),
              const BigMeishiView(meishiId: 1),
              const SizedBox(height: 8.0), // Dividerとのスペースを作る
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: FittedBox(
                  child: Text(
                    '過去の名刺',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Hiragino Sans',
                    ),
                  ),
                ),
              ),
              GridCards(
                list: list,
                isScrollable: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
