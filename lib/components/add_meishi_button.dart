import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddMeishiButton extends StatelessWidget {
  const AddMeishiButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.lightBlueAccent,
          fixedSize: const Size(70, 70),
          shape: const CircleBorder(),
        ),
        onPressed: () {
          context.push('/add/meishi');
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ));
  }
}
