import 'package:e_meishi/components/activities.dart';
import 'package:e_meishi/components/request.dart';
import 'package:e_meishi/components/settings_button.dart';
import 'package:e_meishi/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:e_meishi/components/big_meishi_view.dart';
import 'package:e_meishi/components/transition_button.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  String userName = '';

  @override
  void initState() {
    super.initState();
    _fetchMeishiName();
  }

  Future<void> _fetchMeishiName() async {
    try {
      final meishiData = await getMeishiData(1);
      setState(() {
        userName = meishiData.userName;
      });
    } catch (e) {
      // エラーハンドリング
      setState(() {
        userName = '名前を取得中...';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffoldで画面全体を構成
      appBar: AppBar(
        title: Text(
          userName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        shape: const Border(
          bottom: BorderSide(color: Colors.black12, width: 0.5),
        ),
        actions: const [SettingsButton()],
      ),
      body: const SingleChildScrollView(
        child: Column(
          // Columnでウィジェットを縦に並べる
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BigMeishiView(
              meishiId: 1,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TransitionButton(
                buttonText: '過去の名刺を見る',
                transtion: '/mypage/history',
                icon: Icons.history,
              ),
            ),
            Activities(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TransitionButton(
                      buttonText: 'お問い合わせ',
                      transtion: '/contact',
                      icon: Icons.outgoing_mail,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2),
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
