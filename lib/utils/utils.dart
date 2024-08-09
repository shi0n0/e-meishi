import 'package:flutter/material.dart';
import 'package:e_meishi/components/loading_dialog.dart';
import 'package:e_meishi/components/check_dialog.dart';
import 'package:e_meishi/components/error_dialog.dart';

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
