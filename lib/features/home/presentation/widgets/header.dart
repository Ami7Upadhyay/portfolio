import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/theme/app_colors.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../shared/widgets/image.dart';

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
        children: [
          Flexible(flex: 2, child: _buildContent()),
          Spacer(),
          Flexible(child: AppImageProvider.assets(AppImages.headerImg))
          // Flexible(
          //     flex: 2, child: AppImageProvider.lottieAsset(AppImages.waving))
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _name(),
        _headline(),
        _desc(),
        // Text(
        //   'Flutter ',
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.w700,
        //     fontSize: 40,
        //   ),
        // ),
        // Flexible(
        //   child: StrokeText(
        //     text: "Developer",
        //     textStyle: TextStyle(fontSize: 40, color: Colors.white),
        //     strokeColor: Colors.black,
        //     strokeWidth: 2,
        //   ),
        // ),
        // Flexible(
        //     flex: 2, child: AppImageProvider.lottieAsset(AppImages.waving))
      ],
    );
  }

  Widget _name() {
    return Text.rich(TextSpan(
        text: "Hello I am ",
        style: TextStyle(
            fontSize: 32, fontWeight: FontWeight.w500, color: Colors.white),
        children: [
          TextSpan(
              text: "Amit Upadhyay",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary))
        ]));
  }

  Widget _headline() {
    return Text(
      "Flutter Developer | Cross-Platform Mobile Application Specialist",
      style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: AppColors.primary),
    );
  }

  Widget _desc() {
    return Text(
      "Experienced in designing, developing, and maintaining high-performance "
      "Flutter apps that deliver consistent experiences across iOS and Android.",
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.gray),
    );
  }
}
