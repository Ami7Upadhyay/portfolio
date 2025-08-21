extension SvgPathExtension on String {
  String get toSvg => 'assets/images/$this.svg';
}

extension PngPathExtension on String {
  String get toPng => 'assets/images/$this.png';
}
