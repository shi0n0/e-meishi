import 'package:flutter/material.dart';

class GridCards extends StatelessWidget {
  final List list;
  const GridCards({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 8 / 5),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                list[index],
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
