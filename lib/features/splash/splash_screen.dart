import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/utils/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.onCompleted});
  final VoidCallback onCompleted;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          AppLotties.logo,
          height: 200,
          width: 200,
          controller: _controller,
          onLoaded: (composition) async {
            _controller.repeat(period: composition.duration);
            await Future.delayed(composition.duration, widget.onCompleted.call);
          },
        ),
      ),
    );
  }
}
