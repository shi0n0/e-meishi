import 'package:flutter/material.dart';

class LongDescription extends StatelessWidget {
  final String hintText;
  const LongDescription({super.key, required this.hintText});

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
          isDense: true,
        ),
        minLines: 8,
        maxLines: null,
        keyboardType: TextInputType.multiline);
  }
}
