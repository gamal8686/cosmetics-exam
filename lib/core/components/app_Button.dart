import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppButton extends StatelessWidget {
  final double? width;
  final Color? color;
  final String pass;
  final String? text;
  final bool borderRadius;

  final void Function()? onPressed;

  const AppButton({
    super.key,

    required this.width,
    this.color,
    this.pass = '',
    this.onPressed,
    this.text, this.borderRadius=false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius?60.r:8.r)
          ,
        ),
        onPressed: onPressed,
        color: color,
        height: 60.h,

        minWidth: width,
        child: text != null
            ? Text(
                text!,
                style: TextStyle(fontSize: 16.sp, color: Color(0xffD9D9D9)),
              )
            : AppImage(pass: pass, color: Colors.white),
      ),
    );
  }
}
