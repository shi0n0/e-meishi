import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  final Widget child;
  final GoRouterState state;
  final bool firstLaunch;

  const MainScreen({
    super.key,
    required this.child,
    required this.state,
    required this.firstLaunch,
  });

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    switch (state.matchedLocation) {
      case '/home':
        currentIndex = 0;
        break;
      case '/management':
        currentIndex = 1;
        break;
      case '/mypage':
        currentIndex = 2;
        break;
      default:
        currentIndex = 0;
        break;
    }

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: '名刺管理',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'マイページ',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/home');
              break;
            case 1:
              context.go('/management');
              break;
            case 2:
              context.go('/mypage');
              break;
          }
        },
      ),
    );
  }
}
