import 'dart:async';

import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

void goTo(Widget page, {bool canPop = false, int? delayDuration}) {
  Navigator.of(navKey.currentContext!).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => page),
        (route) => canPop,
  );
  if (delayDuration != null) {
    Timer(Duration(seconds: delayDuration), () {
      print("Delay finished");
    });
  }}


  void showMessage(String message, {bool isError = true}) {
    ScaffoldMessenger.of(navKey.currentContext!).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red : Colors.green,
      ),
    );
  }
