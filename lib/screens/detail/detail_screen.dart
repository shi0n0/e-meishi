import 'package:e_meishi/components/big_meishi_view.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int meishiId;

  const DetailScreen({super.key, required this.meishiId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(('名刺詳細ページ')),
        ),
        body: BigMeishiView(meishiId: meishiId));
  }
}
