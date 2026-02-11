import 'package:cosmetics_exam/core/components/app_Button.dart';
import 'package:cosmetics_exam/core/components/app_country_code.dart';
import 'package:cosmetics_exam/core/components/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/components/app_inpt.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey formKey = GlobalKey();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController passwordNumber = TextEditingController();

  @override
  void initState() {
    super.initState();
    countryCode.first;
  }

  List countryCode = ['+20', '+30', '+40', '+50', '+60'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(15.r),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 40.h),
                AppImage(pass: 'login.png', height: 280.h, width: 230.w),
                SizedBox(height: 25.h),
                Text(
                  'Login Now',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff434C6D),
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(height: 14.h),

                Text('Please enter the details below to continue'),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppCountryCode(),
                    SizedBox(width: 5.w),
                    Expanded(
                      flex: 3,
                      child: AppInput(
                        controller: phoneNumber,
                        labelText: 'Phone Number',
                        onTap: () {},
                        cursorHeight: 60.h,
                      ),
                    ),
                  ],
                ),
                AppInput(

                  controller: passwordNumber,
                  labelText: 'Your Password',
                  suffix: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forget Password?'),
                  ),
                ),
                SizedBox(height: 40.h),
                AppButton(
                  borderRadius: true,
                  width: 235.w,
                  color: Color(0xffD75D72),
                  onPressed: () {},
                  text: 'Login',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
