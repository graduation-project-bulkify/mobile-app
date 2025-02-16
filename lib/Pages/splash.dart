import 'package:bulkify/Pages/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // Initialize AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Animation duration
    )..repeat(reverse: true); // Repeat animation in reverse for a loop

    // Tween for scaling the size of the background image
    _sizeAnimation = Tween<double>(begin: 300, end: 475).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Navigate to the next page after the delay
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const StartPage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Animated Background Image with scaling from the center
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return SvgPicture.asset(
                  'assets/images/Circle BG.svg',
                  width: _sizeAnimation.value,
                  height: _sizeAnimation.value,
                  alignment: Alignment
                      .center, // Ensures it grows outwards from the center
                );
              },
            ),
          ),
          // Foreground Image
          Center(
            child: SvgPicture.asset(
              'assets/images/splash_logo.svg',
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
