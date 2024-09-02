import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      padding: const EdgeInsets.all(8),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              hintText: '名刺の情報で検索',
              filled: true,
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none)),
          onChanged: (value) {},
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
    );
  }
}
