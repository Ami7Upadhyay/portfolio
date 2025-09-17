import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class AppImageProvider {
  static Widget svgAsset(String assetName,
      {BoxFit fit = BoxFit.cover, double? height, double? width}) {
    return SvgPicture.asset(
      assetName,
      fit: fit,
      height: height,
      width: width,
    );
  }

  static Widget lottieAsset(String asset) {
    return Lottie.asset(asset);
  }

  static Widget assets(String assetName,
      {BoxFit fit = BoxFit.cover, double? height, double? width}) {
    return Image.asset(
      assetName,
      fit: fit,
      height: height,
      width: width,
    );
  }
}
