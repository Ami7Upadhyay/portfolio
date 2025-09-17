import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBar {
  static void setStatusBar({
    Brightness statusBarIconBrightness = Brightness.dark,
    Color statusBarColor = Colors.black,
  }) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: statusBarIconBrightness,
        statusBarColor: statusBarColor,
      ),
    );
  }
}
