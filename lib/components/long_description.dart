import 'package:flutter/material.dart';

class LongDescription extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  const LongDescription(
      {super.key, required this.hintText, required this.controller});

  @override
  State<LongDescription> createState() => _LongDescriptionState();
}

class _LongDescriptionState extends State<LongDescription> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                isDense: true,
              ),
              minLines: 5,
              maxLines: null,
              keyboardType: TextInputType.multiline),
        ],
      ),
    );
  }
}
