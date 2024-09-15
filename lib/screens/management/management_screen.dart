import 'package:flutter/material.dart';
import 'package:e_meishi/components/grid_cards.dart';
import 'package:e_meishi/components/search_field.dart';
import 'package:e_meishi/models/meishi.dart';
import 'package:e_meishi/utils/utils.dart';

class ManagementScreen extends StatelessWidget {
  ManagementScreen({super.key});

  final List<Widget> _tabs = [
    const Tab(icon: Icon(Icons.new_releases), text: '新着順'), // 新着順
    const Tab(icon: Icon(Icons.history), text: '古い順'), // 古い順
    const Tab(icon: Icon(Icons.bookmark), text: 'マーク'), // マークされた項目
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const SearchField(),
          bottom: TabBar(tabs: _tabs),
        ),
        body: TabBarView(
          children: [
            buildTabView(SortOrder.newest),
            buildTabView(SortOrder.oldest),
            buildTabView(SortOrder.marked),
          ],
        ),
      ),
    );
  }

  Widget buildTabView(SortOrder sortOrder) {
    return FutureBuilder<List<Meishi>>(
      future: getMeishis(sortOrder),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return const Center(child: Text('エラーが発生しました'));
          } else if (snapshot.hasData && snapshot.data != null) {
            return GridCards(meishis: snapshot.data!, isScrollable: true);
          } else {
            return const Center(child: Text('データがありません'));
          }
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
