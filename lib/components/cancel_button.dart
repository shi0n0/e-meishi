import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CancelButton extends StatelessWidget {
  final String targetScreen; // 変数を宣言
  const CancelButton({super.key, required this.targetScreen});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.go(targetScreen);
        },
        icon: const Icon(Icons.close));
  }
}
