import 'package:flutter/material.dart';

class GridCards extends StatelessWidget {
  final List list;
  final bool isScrollable;
  const GridCards({super.key, required this.list, this.isScrollable = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          shrinkWrap: isScrollable,
          physics: isScrollable
              ? const AlwaysScrollableScrollPhysics()
              : const NeverScrollableScrollPhysics(),
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
