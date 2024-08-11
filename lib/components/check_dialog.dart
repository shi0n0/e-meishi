import 'package:flutter/material.dart';

class CheckDialog extends StatelessWidget {
  const CheckDialog({super.key});

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
            const Text('✔️', style: TextStyle(fontSize: 40)),
            const Text('処理が完了しました'),
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
