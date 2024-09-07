import 'package:flutter/material.dart';

class OneLineDescription extends StatelessWidget {
  final String hintText;
  const OneLineDescription({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),
          ),
          isDense: true),
    );
  }
}
