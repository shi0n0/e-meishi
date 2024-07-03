import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                _pageController.animateToPage(4,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: const Text(
                'スキップ',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: const [
              CustomPage(
                imagePath: 'assets/images/meishi.png',
                title: 'こんにちは、ようこそ！',
                description: 'このアプリで名刺を管理すれば時間をかけて名刺を探す必要がなくなります',
              ),
              CustomPage(
                imagePath: 'assets/images/meishi.png',
                title: '名刺をスマホ内で管理しましょう',
                description: '簡単に名刺をスキャンして、いつでもどこでもアクセスできます。',
              ),
              CustomPage(
                imagePath: 'assets/images/meishi.png',
                title: '名刺を簡単にスキャン',
                description: '高精度のOCR技術を使って、名刺情報を自動で読み取ります。もちろん手動で登録も可能です。',
              ),
              CustomPage(
                imagePath: 'assets/images/meishi.png',
                title: '名刺の検索が簡単',
                description: '名前や会社名で簡単に名刺を検索できます。',
              ),
              CustomPage(
                  imagePath: 'assets/images/meishi.png',
                  title: '名刺を登録しましょう',
                  description: '始めるボタンを押すと名刺登録ページに進みます。')
            ],
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_currentPage == 4) {
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('first_launch', false);
                      if (!context.mounted) return;
                      context.go('/home');
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text(_currentPage == 4 ? '始める' : '次へ'),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

class CustomPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const CustomPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
              width: 300,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
