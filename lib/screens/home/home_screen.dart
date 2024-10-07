import 'package:e_meishi/components/notification_button.dart';
import 'package:e_meishi/components/sample_carousel.dart';
import 'package:e_meishi/components/settings_button.dart';
import 'package:flutter/material.dart';
import 'package:e_meishi/components/big_meishi_view.dart';
import 'package:e_meishi/components/add_meishi_button.dart';
import 'package:e_meishi/components/request.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'e名刺',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [NotificationButton(), SettingsButton()],
      ),
      body: const Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 80.0), // ボタン用のスペースを確保
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BigMeishiView(meishiId: 1), // 仮にmeishiId : 1を指定
                ),
                SizedBox(height: 10), // スペースを追加
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SampleCarousel(
                    title: 'マークした名刺',
                    imageUrls: [
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                    ],
                  ), // 高さ制約を持たせたカルーセル
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SampleCarousel(
                    title: '最近追加した名刺',
                    imageUrls: [
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                      'https://placehold.jp/350x240.png',
                    ],
                  ), // 高さ制約を持たせたカルーセル
                ),
                SizedBox(height: 10), // スペースを追加
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Request(),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: kBottomNavigationBarHeight - 30,
            right: 30,
            child: AddMeishiButton(),
          ),
        ],
      ),
    );
  }
}
