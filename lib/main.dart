import 'package:e_meishi/screens/add/add_meishi.dart';
import 'package:e_meishi/screens/add/display_picture_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/Introduction/introduction_screen.dart';
import 'screens/home/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:camera/camera.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  final prefs = await SharedPreferences.getInstance();

  bool firstLaunch = prefs.getBool('first_launch') ?? true;

  runApp(MyApp(firstLaunch: firstLaunch, firstCamera: firstCamera));
}

class MyApp extends StatelessWidget {
  final bool firstLaunch;
  final CameraDescription firstCamera;

  const MyApp(
      {super.key, required this.firstLaunch, required this.firstCamera});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(initialLocation: '/', routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return firstLaunch ? const IntroductionScreen() : const HomeScreen();
        },
      ),
      GoRoute(
        path: '/Introdution',
        builder: (BuildContext context, GoRouterState state) {
          return const IntroductionScreen();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
          path: '/add/meishi',
          builder: (BuildContext context, GoRouterState state) {
            return AddMeishiScreen(camera: firstCamera);
          }),
      GoRoute(
        path: '/display_picture',
        builder: (BuildContext context, GoRouterState state) {
          final imagePath = state.uri.queryParameters['imagePath']!;
          return DisplayPictureScreen(
            imagePath: imagePath,
          );
        },
      ),
    ]);

    return MaterialApp.router(
      title: 'e名刺',
      routerConfig: router,
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansJpTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
