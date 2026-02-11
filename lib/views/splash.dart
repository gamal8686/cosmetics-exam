import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:cosmetics_exam/core/components/app_image.dart';
import 'package:cosmetics_exam/core/logic/goTo_helper.dart';
import 'package:cosmetics_exam/views/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () => goTo(OnBoardingView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInRightBig(
              child: AppImage(pass: 'logo.png', height: 200.h, width: 200.w),
            ),
            AppImage(pass: 'splash_txt.png',)
          ],
        ),
      ),
    );
  }
}
