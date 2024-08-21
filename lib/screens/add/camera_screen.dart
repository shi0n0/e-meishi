import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:e_meishi/components/capture_button.dart';
import 'dart:ui';
import 'package:image/image.dart' as img; // image packageのインポート
import 'dart:io';
import 'dart:typed_data';

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
    final double screenWidth = MediaQuery.of(context).size.width; //端末の横幅
    final double guideHeight = screenWidth * 5 / 8; // 5:8の比率に基づいて高さを計算

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
            width: screenWidth,
            height: guideHeight,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blue, width: 3)),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: CaptureButton(onPressed: () async {
                  final image = await _controller.takePicture();
                  final croppedImage =
                      await _cropImage(image, screenWidth, guideHeight);

                  if (context.mounted) {
                    context.push(
                        '/display_picture?imageName=${Uri.encodeComponent(croppedImage.name)}&imagePath=${Uri.encodeComponent(croppedImage.path)}');
                  }
                }))),
      ],
    );
  }
}

// 画像をガイド枠に合わせてトリミングするメソッド
Future<XFile> _cropImage(
    XFile imageFile, double cropWidth, double cropHeight) async {
  final bytes = await imageFile.readAsBytes();
  final decodedImage = img.decodeImage(Uint8List.fromList(bytes));

  if (decodedImage != null) {
    const int cropX = 0;
    const int cropY = 0;
    final int width = cropWidth.toInt() * 2;
    final int height = cropHeight.toInt() * 2;

    final croppedImage = img.copyCrop(decodedImage,
        x: cropX, y: cropY, width: width, height: height);

    final croppedFile =
        await File(imageFile.path).writeAsBytes(img.encodeJpg(croppedImage));
    return XFile(croppedFile.path);
  }

  return imageFile; // デコードできなかった場合、元の画像を返す
}
