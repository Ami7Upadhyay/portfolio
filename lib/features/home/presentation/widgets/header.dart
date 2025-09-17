import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/constants/app_images.dart';
import 'package:portfolio/shared/widgets/image.dart';
import 'package:stroke_text/stroke_text.dart';

class Header extends ConsumerStatefulWidget {
  const Header({super.key});

  @override
  ConsumerState<Header> createState() => _HeaderState();
}

class _HeaderState extends ConsumerState<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 80, vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Flutter ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 40,
            ),
          ),
          Flexible(
            child: StrokeText(
              text: "Developer",
              textStyle: TextStyle(fontSize: 40, color: Colors.white),
              strokeColor: Colors.black,
              strokeWidth: 2,
            ),
          ),
          Flexible(
              flex: 2, child: AppImageProvider.svgAsset(AppImages.headerImg))
        ],
      ),
    );
  }
}
