import 'package:flutter/material.dart';

class GridCards extends StatelessWidget {
  final List<Map<String, String>> list;
  final bool isScrollable;
  const GridCards({super.key, required this.list, this.isScrollable = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          shrinkWrap: !isScrollable,
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
            final imageUrl = list[index]['imageUrl'] ?? '';
            final addedTime = list[index]['addedTime'] ?? '';

            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    color: Colors.black.withOpacity(0.1), // 半透明の背景色
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 2.0),
                      child: Text(
                        addedTime, // 動的に設定可能な登録日
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.white, // テキストを白色に
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
