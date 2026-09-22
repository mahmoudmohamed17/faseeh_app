import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/extensions.dart';
import '../../core/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  double _opacity = 1;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        _opacity = 0.65;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _background(),
          _card(context),
        ],
      ),
    );
  }

  Widget _card(BuildContext context) {
    return Positioned(
      bottom: 24.h,
      right: 16.w,
      left: 16.w,
      child: SafeArea(
        top: false,
        child: FadeIn(
          delay: const Duration(milliseconds: 1300),
          duration: const Duration(milliseconds: 1000),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(
                16.r,
              ),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              spacing: 16.h,
              children: [
                Text(
                  context.tr(AppStrings.onboardingTitle),
                  textAlign: TextAlign.center,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  context.tr(AppStrings.onboardingDescription),
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CustomElevatedButton(
                  text: AppStrings.onboardingStart,
                  onPressed: () {},
                  height: 56.h,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _background() {
    return Positioned.fill(
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 1000),
        opacity: _opacity,
        curve: Curves.ease,
        child: FadeIn(
          duration: const Duration(milliseconds: 1500),
          curve: Curves.ease,
          child: Image.asset(
            AppImages.onboarding,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
