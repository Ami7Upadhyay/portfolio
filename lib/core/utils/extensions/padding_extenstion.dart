import 'package:flutter/cupertino.dart';

extension PaddingExtenstion on num {
  Widget get vPad => SizedBox(height: toDouble());

  Widget get hPad => SizedBox(width: toDouble());
}
