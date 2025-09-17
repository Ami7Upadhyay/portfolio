import 'package:flutter/cupertino.dart';

import '../../core/theme/app_colors.dart';

Widget horizontalDivider({double? width, double height = 2}) {
  return Container(
    color: AppColors.primary,
    width: width ?? double.infinity,
    height: height,
  );
}
