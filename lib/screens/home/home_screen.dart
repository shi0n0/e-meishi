import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ホーム')),
      body: Center(
        child: ElevatedButton(
          child: const Text('次へ'),
          onPressed: () {
            print('ホームボタン');
          },
        ),
      ),
    );
  }
}
