import 'package:flutter/material.dart';
import 'package:e_meishi/components/my_meishi_view.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyMeishiView(
      meishiId: 1,
    );
  }
}
