import 'package:camera/camera.dart';
import 'package:e_meishi/screens/add/camera_screen.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class AddMeishiScreen extends StatefulWidget {
  final CameraDescription camera;
  final Isar isar;

  const AddMeishiScreen({super.key, required this.camera, required this.isar});

  @override
  State<AddMeishiScreen> createState() => _AddMeishiScreenState();
}

class _AddMeishiScreenState extends State<AddMeishiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('名刺を撮影')),
      body: Stack(
        children: [
          CameraScreen(camera: widget.camera),
        ],
      ),
    );
  }
}
