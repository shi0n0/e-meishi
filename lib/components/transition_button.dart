import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransitionButton extends StatelessWidget {
  final String buttonText;
  final String transtion;
  final IconData icon;

  const TransitionButton(
      {super.key,
      required this.buttonText,
      required this.transtion,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        context.push(transtion); // 必要なページに遷移するように変更
      },
      icon: Icon(
        icon, // IconData型のアイコンをそのまま使用
        size: 24,
        color: Colors.blue,
      ),
      label: Text(
        buttonText, // ボタンのテキスト
        style: const TextStyle(
          fontSize: 16,
          color: Colors.blue,
        ),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.blue, // ボタンの背景色
        backgroundColor: Colors.blue[50],
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // ボタンの角を丸くする
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 12), // パディングを追加
      ),
    );
  }
}
