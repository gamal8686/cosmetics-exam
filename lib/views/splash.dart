import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffD9D9D9),
body:Center(
  child: SvgPicture.asset('assets/icons/splash.png'),
  ///todo

) ,
    ) ;
  }
}
