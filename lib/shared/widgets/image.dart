import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

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
}
