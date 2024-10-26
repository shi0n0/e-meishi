import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  final Map<String, List<Map<String, dynamic>>> _categories = {
    '一般設定': [
      {'name': 'e名刺について', 'icon': Icons.info},
      {'name': 'アプリのバージョン', 'icon': Icons.system_update},
      {'name': '言語設定', 'icon': Icons.language},
    ],
    'プライバシー': [
      {'name': '個人情報保護方針', 'icon': Icons.privacy_tip},
    ],
    'サポート': [
      {'name': 'ヘルプ', 'icon': Icons.help},
      {'name': 'ご意見や不具合のご報告', 'icon': Icons.feedback},
    ],
  };

  SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(
          bottom: BorderSide(color: Colors.black12, width: 0.5),
        ),
        title: const Text(
          '設定',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: _categories.entries.map((category) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Text(
                  category.key,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...category.value.map((item) {
                return Column(
                  children: [
                    ListTile(
                      leading: Icon(item['icon']),
                      title: Text(item['name']),
                      trailing: const Icon(Icons.arrow_right),
                      dense: true,
                      onTap: () {},
                    ),
                    const Divider(height: 0),
                  ],
                );
              }),
            ],
          );
        }).toList(),
      ),
    );
  }
}
