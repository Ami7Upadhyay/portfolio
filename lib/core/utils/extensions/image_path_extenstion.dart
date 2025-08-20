extension SvgPathExtension on String {
  String get toSvg => 'assets/icons/$this.svg';
}

extension PngPathExtension on String {
  String get toPng => 'assets/icons/$this.png';
}
