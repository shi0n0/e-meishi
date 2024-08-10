import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String errorMessage;

  const ErrorDialog({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('❌', style: TextStyle(fontSize: 40)),
            Text('エラーが発生しました:$errorMessage'),
            TextButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
              },
              child: const Text('閉じる'),
            )
          ],
        ),
      ),
    );
  }
}
