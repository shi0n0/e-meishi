import 'package:flutter/material.dart';

class CheckDialog extends StatelessWidget {
  const CheckDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('✔️', style: TextStyle(fontSize: 40)),
            Text('処理が完了しました')
          ],
        ),
      ),
    );
  }
}
