import 'package:e_meishi/models/meishi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: Text(
          'こちらもお願いします',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              Expanded(
                  child: Card(
                child: Image.network('https://placehold.jp/350x240.png'),
              )),
              Expanded(
                  child: Card(
                child: Image.network('https://placehold.jp/350x240.png'),
              ))
            ],
          ))
    ]);
  }
}
