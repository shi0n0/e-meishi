import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('イントロダクション'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('次へ'),
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();

            await prefs.setBool('first_launch', false);
            if (!context.mounted) return;
            context.go('/home');
          },
        ),
      ),
    );
  }
}
