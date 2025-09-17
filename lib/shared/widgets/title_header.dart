import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/extensions/media_query_extenstion.dart';
import 'package:portfolio/core/utils/extensions/padding_extenstion.dart';

import '../../core/theme/app_colors.dart';
import 'common_widgets.dart';

class TitleHeader extends StatelessWidget {
  final String title;
  final double? lineWidth;
  const TitleHeader({super.key, required this.title, this.lineWidth});

  @override
  Widget build(BuildContext context) {
    return buildHeader(context);
  }

  Widget buildHeader(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          TextSpan(
              text: "#",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary),
              children: [
                TextSpan(
                    text: title,
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ]),
        ),
        10.hPad,
        Flexible(
            child: horizontalDivider(width: lineWidth ?? context.width * 0.35))
      ],
    );
  }
}
