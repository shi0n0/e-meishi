import 'dart:io';
import 'package:flutter/material.dart';
import 'package:e_meishi/models/meishi.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:intl/intl.dart';

String formatDate(DateTime? date) {
  if (date == null) return '日付なし';
  return DateFormat('M/d').format(date);
}

class GridCards extends StatelessWidget {
  final List<Meishi> meishis;
  final bool isScrollable;

  const GridCards({super.key, required this.meishis, this.isScrollable = true});

  Future<String> getImageFilePath(String imageName) async {
    final dir = await getApplicationDocumentsDirectory();
    return '${dir.path}/camera/pictures/$imageName';
  }

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
          childAspectRatio: 8 / 5,
        ),
        itemCount: meishis.length,
        itemBuilder: (context, index) {
          final meishi = meishis[index];
          return FutureBuilder<String>(
            future: getImageFilePath(meishi.imageName),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                return Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        context.push('/detail');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(
                          File(snapshot.data!),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4.0, vertical: 2.0),
                        child: Text(
                          formatDate(meishi.addedTime),
                          style: const TextStyle(
                              fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          );
        },
      ),
    );
  }
}
