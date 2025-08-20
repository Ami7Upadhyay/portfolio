import 'package:flutter/cupertino.dart';

extension ScreenSizeExtension on BuildContext {
  // Mobile Devices
  bool get isMobile => MediaQuery.of(this).size.width < 600;

  // Tablet Devices
  bool get isTablet =>
      MediaQuery.of(this).size.width >= 600 &&
      MediaQuery.of(this).size.width <= 1024;

  // Desktop and large Devices
  bool get isDesktop => MediaQuery.of(this).size.width > 1024;
}
