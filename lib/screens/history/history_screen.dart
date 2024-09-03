import 'package:e_meishi/components/big_meishi_view.dart';
import 'package:e_meishi/components/grid_cards.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});

  final List<String> list = [
    'https://placehold.jp/380x240.png',
    'https://placehold.jp/360x230.png',
    'https://placehold.jp/340x220.png',
    'https://placehold.jp/320x210.png',
    'https://placehold.jp/300x200.png',
    'https://placehold.jp/280x190.png',
    'https://placehold.jp/260x180.png',
    'https://placehold.jp/240x170.png',
    'https://placehold.jp/220x160.png',
    'https://placehold.jp/200x150.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('名刺履歴'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  '現在の名刺',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Hiragino Sans',
                  ),
                ),
              ),
              BigMeishiView(meishiId: 1),
              SizedBox(height: 8.0), // Dividerとのスペースを作る
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
