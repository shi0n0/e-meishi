import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  final List<String> _items = [
    'アイテム1',
    'アイテム2',
    'アイテム3',
    'アイテム4',
    'アイテム5',
    'アイテム6',
    'アイテム7',
    'アイテム8',
    'アイテム9',
    'アイテム10',
  ];

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
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: Text(_items[index]),
                trailing: const Icon(Icons.arrow_right),
                dense: true,
                onTap: () {},
              ),
              const Divider(
                height: 0,
              ),
            ],
          );
        },
      ),
    );
  }
}
