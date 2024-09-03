import 'package:e_meishi/components/grid_cards.dart';
import 'package:flutter/material.dart';
import 'package:e_meishi/components/search_field.dart';

class ManagementScreen extends StatelessWidget {
  ManagementScreen({super.key});

  final List<Widget> _tabs = [
    const Tab(icon: Icon(Icons.new_releases), text: '新着順'), // 新着順用のアイコン
    const Tab(icon: Icon(Icons.history), text: '古い順'), // 古い順用のアイコン
    const Tab(icon: Icon(Icons.bookmark), text: 'マーク'), // マーク用のアイコン
  ];

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
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const SearchField(),
          bottom: TabBar(
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: [
            GridCards(
              list: list,
            ), // 新着順
            GridCards(
              list: list,
            ), // 古い順
            GridCards(
              list: list,
            ), // マーク
          ],
        ),
      ),
    );
  }
}
