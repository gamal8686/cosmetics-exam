import 'package:cosmetics_exam/core/components/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInput extends StatefulWidget {
  final String? labelText;
  final void Function()? onTap;
  final double? cursorHeight;

  final TextInputType? keyboardType;
  final bool isPassword;
  final bool suffix;

  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const AppInput({
    super.key,
    this.labelText,
    this.onTap,
    this.cursorHeight,

    this.controller,
    this.validator,
    this.keyboardType ,
    this.isPassword=false ,
    this.suffix = false,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool suffixIcon = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: widget.keyboardType,

        obscureText: widget.isPassword && suffixIcon,


        validator: widget.validator,
        controller: widget.controller,
        cursorHeight: widget.cursorHeight,

        decoration: InputDecoration(
          suffixIcon: widget.suffix
              ? IconButton(
            onPressed:  () {
              setState(() {
                suffixIcon = !suffixIcon;
              });
            },

                 icon:  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: AppImage(
                      pass: suffixIcon
                          ? 'visibility_off.svg'
                          : 'visibility_on.svg',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                )
              : null,
          labelText: widget.labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
