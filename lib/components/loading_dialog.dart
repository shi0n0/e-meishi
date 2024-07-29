import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  final String loadingMessage;

  const LoadingDialog({super.key, this.loadingMessage = "Loading..."});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const CircularProgressIndicator(),
            const SizedBox(width: 20),
            Text(
              loadingMessage,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
