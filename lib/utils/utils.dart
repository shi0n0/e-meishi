import 'package:e_meishi/models/meishi.dart';
import 'package:flutter/material.dart';
import 'package:e_meishi/components/loading_dialog.dart';
import 'package:e_meishi/components/check_dialog.dart';
import 'package:e_meishi/components/error_dialog.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

void showLoadingDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return LoadingDialog(loadingMessage: message);
    },
  );
}

void showCheckDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const CheckDialog();
      });
}

void showErrorDialog(BuildContext context, String errorMessage) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return ErrorDialog(errorMessage: errorMessage);
      });
}

/*DB関連*/
// 新着順リスト形式で名刺を取得
Future<List<Meishi>> getRecent() async {
  final Isar? isar = Isar.getInstance(); // Isarインスタンスを取得
  if (isar == null) {
    return []; // Isarインスタンスがnullの場合、空のリストを返す
  }
  final List<Meishi> meishis =
      await isar.meishis.where().sortByAddedTimeDesc().findAll(); // 名刺を新着順に取得
  return meishis;
}
