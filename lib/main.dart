import 'package:e_meishi/models/meishi.dart';
import 'package:e_meishi/screens/add/add_meishi.dart';
import 'package:e_meishi/screens/add/display_picture_screen.dart';
import 'package:e_meishi/screens/history/history_screen.dart';
import 'screens/management/management_screen.dart';
import 'screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/Introduction/introduction_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/my_page/my_page_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:camera/camera.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart'; // 追加

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();

  final isar = await Isar.open([MeishiSchema], directory: dir.path);
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  final prefs = await SharedPreferences.getInstance();

  bool firstLaunch = prefs.getBool('first_launch') ?? true; // 初回起動フラグを取得

  runApp(MyApp(isar: isar, firstLaunch: firstLaunch, firstCamera: firstCamera));
}

class MyApp extends StatelessWidget {
  final Isar isar;
  final bool firstLaunch;
  final CameraDescription firstCamera;

  const MyApp({
    super.key,
    required this.isar,
    required this.firstLaunch,
    required this.firstCamera,
  });

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: firstLaunch ? '/introduction' : '/home', // 初期ルートを設定
      routes: [
        GoRoute(
          path: '/introduction',
          builder: (BuildContext context, GoRouterState state) {
            return IntroductionScreen(
              onFinished: () async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool('first_launch', false); // 初回起動フラグをfalseに更新
                context.go('/home'); // Home画面へ移動
              },
            );
          },
        ),
        ShellRoute(
          builder: (BuildContext context, GoRouterState state, Widget child) {
            return MainScreen(
              state: state,
              firstLaunch: firstLaunch,
              child: child,
            );
          },
          routes: <RouteBase>[
            GoRoute(
              path: '/home',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: HomeScreen(),
              ),
            ),
            GoRoute(
              path: '/management',
              pageBuilder: (context, state) => NoTransitionPage(
                child: ManagementScreen(),
              ),
            ),
            GoRoute(
              path: '/mypage',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: MyPageScreen(),
              ),
              routes: <GoRoute>[
                GoRoute(
                  path: 'history',
                  pageBuilder: (context, state) => NoTransitionPage(
                    child: HistoryScreen(),
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: '/add/meishi',
          builder: (BuildContext context, GoRouterState state) {
            return AddMeishiScreen(camera: firstCamera, isar: isar);
          },
        ),
        GoRoute(
          path: '/display_picture',
          builder: (BuildContext context, GoRouterState state) {
            final imageName = state.uri.queryParameters['imageName']!;
            final imagePath = state.uri.queryParameters['imagePath']!;
            return DisplayPictureScreen(
              imageName: imageName,
              imagePath: imagePath,
              isar: isar,
            );
          },
        ),
      ],
    );

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
