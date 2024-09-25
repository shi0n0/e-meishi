import 'package:flutter/material.dart';

class OneLineDescription extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const OneLineDescription(
      {super.key, required this.hintText, required this.controller});

  @override
  State<OneLineDescription> createState() => _OneLineDescriptionState();
}

class _OneLineDescriptionState extends State<OneLineDescription> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              widget.hintText,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            controller: widget.controller,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                isDense: true),
          ),
        ],
      ),
    );
  }
}
