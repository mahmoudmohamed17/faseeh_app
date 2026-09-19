import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/utils/app_assets.dart';

class SplashScreen extends StatelessWidget {
  const new({super.key, required this.onCompleted});
  final VoidCallback onCompleted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          AppLotties.logo,
          height: 200,
          width: 200,
          reverse: true,
          onLoaded: (composition) {
            Future.delayed(
              Duration(milliseconds: composition.duration.inMilliseconds),
              onCompleted,
            );
          },
        ),
      ),
    );
  }
}
