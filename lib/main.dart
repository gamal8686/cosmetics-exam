import 'package:cosmetics_exam/core/logic/goTo_helper.dart';
import 'package:cosmetics_exam/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'auth/login.dart';

main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cosmetics_Exam',
        theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: Color(0xffD75D72)),
          ),
          scaffoldBackgroundColor: Color(0xffD9D9D9),
          fontFamily: 'Montserrat',
          appBarTheme: AppBarTheme(color: Colors.transparent),

          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              backgroundColor: Color(0xffFFFFFF),
              fixedSize: Size.fromHeight(65.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(40.r),
              ),

              iconSize: 16.sp,
            ),
          ),
        ),
        navigatorKey: navKey,

        home: const LoginView(),
      ),
    );
  }
}
