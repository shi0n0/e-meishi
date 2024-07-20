import 'package:camera/camera.dart';
import 'package:e_meishi/screens/add/camera_screen.dart';
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
        ],
      ),
    );
  }
}
