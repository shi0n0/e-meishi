import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  final Map<String, List<String>> _categories = {
    '一般設定': ['e名刺について', 'アプリのバージョン', '言語設定'],
    'プライバシー': ['個人情報保護方針'],
    'サポート': ['ヘルプ', 'ご意見や不具合のご報告']
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
                      leading: const Icon(Icons.privacy_tip),
                      title: Text(item),
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
