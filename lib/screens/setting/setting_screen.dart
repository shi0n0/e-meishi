import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: const Text('テキスト'),
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
