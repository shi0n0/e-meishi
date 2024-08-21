import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:e_meishi/components/capture_button.dart';
import 'dart:ui';

class CameraScreen extends StatefulWidget {
  final CameraDescription camera;
  const CameraScreen({super.key, required this.camera});

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.high,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // ウィジェットが破棄されたら、コントローラーを破棄
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return CameraPreview(_controller);
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: MediaQuery.of(context).size.height / 2,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                color: Colors.black87,
                alignment: Alignment.topCenter, // 背景の暗さ
                padding: const EdgeInsets.only(top: 20),
                child: const Column(children: [
                  Text(
                    '上のガイドに従って名刺を撮影してください',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10), // 魔を追加

                  Text(
                    // 新しいテキストウィジェットを追加
                    '影のできない環境で撮影すると\n綺麗な仕上がりになります',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: const EdgeInsets.only(top: 100),
            width: 350,
            height: 350 * 5 / 8,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3)),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: CaptureButton(onPressed: () async {
                  final image = await _controller.takePicture();
                  if (context.mounted) {
                    context.push(
                        '/display_picture?imageName=${Uri.encodeComponent(image.name)}&imagePath=${Uri.encodeComponent(image.path)}');
                  }
                }))),
      ],
    );
  }
}
