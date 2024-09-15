import 'package:e_meishi/models/meishi.dart';
import 'package:flutter/material.dart';
import 'package:e_meishi/components/loading_dialog.dart';
import 'package:e_meishi/components/check_dialog.dart';
import 'package:e_meishi/components/error_dialog.dart';
import 'package:isar/isar.dart';

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

// DB関連
enum SortOrder { newest, oldest, marked }

Future<List<Meishi>> getMeishis(SortOrder sortOrder) async {
  final Isar? isar = Isar.getInstance(); // Isarインスタンスを取得、null許容型として扱う
  if (isar == null) {
    throw Exception('Database not available'); // ここでエラーハンドリング、または空のリストを返す等
  }

  switch (sortOrder) {
    case SortOrder.newest:
      return await isar.meishis.where().sortByAddedTimeDesc().findAll();
    case SortOrder.oldest:
      return await isar.meishis.where().sortByAddedTime().findAll();
    case SortOrder.marked:
      return await isar.meishis
          .where()
          .sortByAddedTimeDesc()
          .findAll(); //未実装のため仮に新着順を表示
    default:
      return [];
  }
}
