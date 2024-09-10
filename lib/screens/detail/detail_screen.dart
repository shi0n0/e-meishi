import 'package:e_meishi/components/big_meishi_view.dart';
import 'package:e_meishi/components/single_line_description.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int meishiId;

  const DetailScreen({super.key, required this.meishiId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(('名刺詳細ページ')),
        ),
        body: Column(
          children: [
            BigMeishiView(meishiId: meishiId),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: OneLineDescription(hintText: '名前'),
            )
          ],
        ));
  }
}
