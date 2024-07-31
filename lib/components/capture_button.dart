import 'package:flutter/material.dart';

class CaptureButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CaptureButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white70,
        fixedSize: const Size(80, 80),
        side: const BorderSide(
          color: Colors.white,
          width: 4.0,
        ),
        shape: const CircleBorder(),
      ),
      onPressed: onPressed,
      child: const SizedBox(),
    );
  }
}
