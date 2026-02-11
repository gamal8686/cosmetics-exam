import 'package:cosmetics_exam/auth/login.dart';
import 'package:cosmetics_exam/core/components/app_Button.dart';
import 'package:cosmetics_exam/core/components/app_image.dart';
import 'package:cosmetics_exam/core/logic/goTo_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentIndex = 0;
  final List<Pages> list = [
    Pages(
      test:
          ' Makeup has the power to transform your\n mood and empowers you to be a more \n confident person.',
      image: 'on_boarding1.png',
      title: 'WELCOME!',
    ),
    Pages(
      test:
          'We have dedicated set of products and \n routines hand picked for every skin type.',
      image: 'on_boarding2.png',
      title: 'SEARCH & PICK',
    ),
    Pages(
      test: 'Allow notifications for new makeup &\n cosmetics offers.',
      image: 'on_boarding3.png',
      title: 'PUCH NOTIFICATIONS ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20.r),
        children: [
          SizedBox(height: 30.h),
          Text(
            'Skip',
            style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff434C6D),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.end,
          ),
          SizedBox(height: 77.h),
          AppImage(pass: list[currentIndex].image),
          SizedBox(height: 27.h),
          Text(
            list[currentIndex].title,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16.sp,
              color: Color(0xff434C6D),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),
          Text(
            list[currentIndex].test,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14.sp,
              color: Color(0xff434C6D),
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),

      (currentIndex < list.length - 1) ?

      AppButton(
            onPressed: () {
              setState(() {
                if (currentIndex < list.length - 1) {
                  currentIndex++;
                } else {
                  goTo(LoginView());
                }
              });
            },
            width:currentIndex < list.length - 1? 60.w:235.w,

            pass:'arrow_right.svg',
            color: Color(0xff434C6D),
          ):  AppButton(
        onPressed: () {
          setState(() {
            if (currentIndex < list.length - 1) {
              currentIndex++;
            } else {
               goTo(LoginView());
            }
          });
        },
        width:currentIndex < list.length - 1? 60.w:235.w,

       text: 'let’s start!',
        color: Color(0xff434C6D),
      ),
        ],
      ),
    );
  }
}

class Pages {
  final String test, image, title;

  Pages({required this.title, required this.test, required this.image});
}
