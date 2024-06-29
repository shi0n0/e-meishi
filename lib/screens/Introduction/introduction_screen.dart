import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ようこそ'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('次へ'),
          onPressed: () {},
        ),
      ),
    );
  }
}
