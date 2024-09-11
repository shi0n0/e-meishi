import 'package:e_meishi/components/big_meishi_view.dart';
import 'package:e_meishi/components/single_line_description.dart';
import 'package:e_meishi/components/long_description.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              BigMeishiView(meishiId: meishiId),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    OneLineDescription(hintText: '名前'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: OneLineDescription(hintText: '性別')),
                        SizedBox(width: 8),
                        Expanded(child: OneLineDescription(hintText: '年齢')),
                      ],
                    ),
                    OneLineDescription(hintText: '所属'),
                    OneLineDescription(hintText: '電話番号'),
                    LongDescription(hintText: '名刺の説明やメモなど'),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
