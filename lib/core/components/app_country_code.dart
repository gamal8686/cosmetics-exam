import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCountryCode extends StatefulWidget {
  const AppCountryCode({super.key});

  @override
  State<AppCountryCode> createState() => _AppCountryCodeState();
}

class _AppCountryCodeState extends State<AppCountryCode> {

  String selectedCountryCode = '+20';
  List countryCode = ['+20', '+30', '+40','+50','+60'];
  @override
  Widget build(BuildContext context) {
    return          Expanded(
      flex: 1,
      child: DropdownButton(
        value: selectedCountryCode,
        isExpanded: true,
        menuMaxHeight: 100.h,

        borderRadius: BorderRadius.all(Radius.circular(8)),
        items: countryCode
            .map(
              (code) => DropdownMenuItem<String>(
            value: code,
            child: Text(
              code,
              style: TextStyle(fontSize: 20.sp),
            ),
          ),
        )
            .toList(),
        onChanged: (String? value) {
          if (value == null) return;
          selectedCountryCode = value;
          setState(() {});
        },
      ),
    );
  }
}
