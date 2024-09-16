import 'package:e_meishi/components/big_meishi_view.dart';
import 'package:e_meishi/components/single_line_description.dart';
import 'package:e_meishi/components/long_description.dart';
import 'package:flutter/material.dart';
import 'package:e_meishi/utils/utils.dart';
import 'package:e_meishi/models/meishi.dart';

class DetailScreen extends StatelessWidget {
  final int meishiId;

  const DetailScreen({super.key, required this.meishiId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(('名刺詳細ページ')),
        ),
        body: FutureBuilder<Meishi>(
            future: getMeishiData(meishiId),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator()); // データ取得中のローディング表示
              } else if (snapshot.hasError) {
                return Center(
                    child: Text('エラーが発生しました: ${snapshot.error}')); // エラーメッセージ表示
              } else if (!snapshot.hasData || snapshot.data == null) {
                return const Center(child: Text('データが見つかりません')); // データがない場合の表示
              }

              final meishiData = snapshot.data;

              return SingleChildScrollView(
                child: Column(
                  children: [
                    BigMeishiView(meishiId: meishiId),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          OneLineDescription(
                            hintText: '名前',
                            mainText: meishiData?.userName ?? '取得できませんでした',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: OneLineDescription(
                                hintText: '性別',
                                mainText: meishiData?.gender ?? '取得できませんでした',
                              )),
                              const SizedBox(width: 8),
                              Expanded(
                                  child: OneLineDescription(
                                hintText: '年齢',
                                mainText: meishiData?.age ?? '取得できませんでした',
                              )),
                            ],
                          ),
                          OneLineDescription(
                            hintText: '所属',
                            mainText: meishiData?.affiliation ?? '取得できませんでした',
                          ),
                          OneLineDescription(
                            hintText: '電話番号',
                            mainText: meishiData?.phoneNumber ?? '取得できませんでした',
                          ),
                          LongDescription(
                            hintText: 'メモなど',
                            mainText: meishiData?.memo ?? '取得できませんでした',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
