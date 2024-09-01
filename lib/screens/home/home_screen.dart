import 'package:flutter/material.dart';
import 'package:e_meishi/components/big_meishi_view.dart';
import 'package:e_meishi/components/add_meishi_button.dart';
import 'package:e_meishi/components/request.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ホーム')),
        body: const Stack(children: [
          Column(
            children: [
              BigMeishiView(meishiId: 1), //仮にmeishiId : 1を指定
              Request()
            ],
          ),
          Positioned(
            bottom: kBottomNavigationBarHeight - 30,
            right: 30,
            child: AddMeishiButton(),
          )
        ]));
  }
}
