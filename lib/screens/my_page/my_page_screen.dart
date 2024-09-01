import 'package:e_meishi/components/activities.dart';
import 'package:e_meishi/components/request.dart';
import 'package:flutter/material.dart';
import 'package:e_meishi/components/my_meishi_view.dart';
import 'package:e_meishi/components/transition_button.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffoldで画面全体を構成
      appBar: AppBar(
        title: const Text('マイページ'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          // Columnでウィジェットを縦に並べる
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyMeishiView(
              meishiId: 1,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TransitionButton(
                buttonText: '過去の名刺を見る',
                transtion: '/history',
                icon: Icons.history,
              ),
            ),
            Activities(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Expanded(
                      child: TransitionButton(
                        buttonText: 'お問い合わせ',
                        transtion: '/contact',
                        icon: Icons.outgoing_mail,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Expanded(
                      child: TransitionButton(
                        buttonText: 'よくある質問',
                        transtion: '/question',
                        icon: Icons.help,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Request()
          ],
        ),
      ),
    );
  }
}
