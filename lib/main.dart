import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/Introduction/introduction_screen.dart';
import 'screens/home/home_screen.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  bool firstLaunch = prefs.getBool('first_launch') ?? true;

  runApp(MyApp(firstLaunch: firstLaunch));
}

class MyApp extends StatelessWidget {
  final bool firstLaunch;
  const MyApp({super.key, required this.firstLaunch});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return firstLaunch
                  ? const IntroductionScreen()
                  : const HomeScreen();
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
          )
        ]);

    return MaterialApp.router(
      title: 'e名刺',
      routerConfig: router,
    );
  }
}
