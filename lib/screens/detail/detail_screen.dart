import 'package:e_meishi/components/big_meishi_view.dart';
import 'package:e_meishi/components/single_line_description.dart';
import 'package:e_meishi/components/long_description.dart';
import 'package:flutter/material.dart';
import 'package:e_meishi/utils/utils.dart';
import 'package:e_meishi/models/meishi.dart';
import 'package:isar/isar.dart';

class DetailScreen extends StatefulWidget {
  final int meishiId;

  const DetailScreen({super.key, required this.meishiId});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late final Isar _isar;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _affiliationController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  late Future<Meishi?> _meishiData;

  @override
  void initState() {
    super.initState();
    _isar = Isar.getInstance()!;
    _meishiData = getMeishiData(widget.meishiId);

    // データを取得してコントローラに初期値を設定
    _meishiData.then((meishi) {
      if (meishi != null) {
        _nameController.text = meishi.userName;
        _genderController.text = meishi.gender;
        _ageController.text = meishi.age;
        _affiliationController.text = meishi.affiliation;
        _phoneNumberController.text = meishi.phoneNumber;
      }
    });
  }

  //　コントローラーを破棄
  @override
  void dispose() {
    _nameController.dispose();
    _genderController.dispose();
    _ageController.dispose();
    _affiliationController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(('名刺詳細ページ')),
          actions: [
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () => saveMeishiData(
                      _isar,
                      widget.meishiId,
                      _nameController,
                      _genderController,
                      _ageController,
                      _phoneNumberController,
                      _affiliationController)
                  .then((_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('データが保存されました')),
                );
              }),
            ),
          ],
        ),
        body: FutureBuilder<Meishi>(
            future: getMeishiData(widget.meishiId),
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
                    BigMeishiView(meishiId: widget.meishiId),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          OneLineDescription(
                            hintText: '名前',
                            controller: _nameController,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: OneLineDescription(
                                hintText: '性別',
                                controller: _genderController,
                              )),
                              const SizedBox(width: 8),
                              Expanded(
                                  child: OneLineDescription(
                                hintText: '年齢',
                                controller: _ageController,
                              )),
                            ],
                          ),
                          OneLineDescription(
                            hintText: '所属',
                            controller: _affiliationController,
                          ),
                          OneLineDescription(
                            hintText: '電話番号',
                            controller: _phoneNumberController,
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
