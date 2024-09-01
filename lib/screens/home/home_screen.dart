import 'package:flutter/material.dart';
import 'package:e_meishi/components/big_meishi_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ホーム')),
        body: const Column(
          children: [BigMeishiView(meishiId: 1)], //仮にmeishiId : 1を指定
        ));
  }
}
