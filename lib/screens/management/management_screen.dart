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

  final List<String> list = [
    'https://placehold.jp/380x240.png',
    'https://placehold.jp/360x230.png',
    'https://placehold.jp/340x220.png',
    'https://placehold.jp/320x210.png',
    'https://placehold.jp/300x200.png',
    'https://placehold.jp/280x190.png',
    'https://placehold.jp/260x180.png',
    'https://placehold.jp/240x170.png',
    'https://placehold.jp/220x160.png',
    'https://placehold.jp/200x150.png'
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
            ), //古い順
            GridCards(
              list: list,
            ), //マーク
          ],
        ),
      ),
    );
  }
}
