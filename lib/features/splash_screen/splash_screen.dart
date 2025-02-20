import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:practical_google_maps_example/core/routing/app_routes.dart';
import 'package:practical_google_maps_example/core/styling/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(seconds: 1, milliseconds: 500))
      ..repeat(reverse: true);

    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    waitAnimationAndNavigate();
    super.initState();
  }

  waitAnimationAndNavigate() async {
    await Future.delayed(const Duration(seconds: 3));

    context.pushReplacementNamed(AppRoutes.loginScreen);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: animation,
          child: Image.asset(
            AppAssets.logo,
            width: 200.w,
            height: 200.w,
          ),
        ),
      ),
    );
  }
}
