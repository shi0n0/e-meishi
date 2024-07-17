import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:e_meishi/components/camera_screen.dart';
import 'package:flutter/material.dart';

class AddMeishiScreen extends StatefulWidget {
  final CameraDescription camera;

  const AddMeishiScreen({super.key, required this.camera});

  @override
  _AddMeishiScreenState createState() => _AddMeishiScreenState();
}

class _AddMeishiScreenState extends State<AddMeishiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('名刺を撮影')),
      body: Stack(
        children: [
          CameraScreen(camera: widget.camera),
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white70,
                  fixedSize: const Size(80, 80),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 4.0,
                  ),
                  shape: const CircleBorder(),
                ),
                onPressed: () {},
                child: const SizedBox(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
