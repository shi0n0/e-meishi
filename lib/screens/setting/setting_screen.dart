import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '設定',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('一般'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: const Text('言語'),
                value: const Text('日本語'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: const Icon(Icons.format_paint),
                title: const Text('ダークテーマ'),
              ),
            ],
          ),
          SettingsSection(
            title: const Text('データ'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.document_scanner),
                title: const Text('利用規約'),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.privacy_tip),
                title: const Text('プライバシーポリシー'),
              ),
            ],
          ),
          SettingsSection(
            title: const Text('その他'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.question_answer),
                title: const Text('よくある質問'),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.contact_support),
                title: const Text('お問い合わせ'),
              ),
            ],
          ),
          SettingsSection(
            title: const Text('重要'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                title: const Text('データ消去'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
