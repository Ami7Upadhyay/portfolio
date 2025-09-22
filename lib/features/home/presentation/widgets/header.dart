import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/utils/extensions/padding_extenstion.dart';

final headerKey = GlobalKey();

class Header extends ConsumerStatefulWidget {
  const Header({super.key});

  @override
  ConsumerState<Header> createState() => _HeaderState();
}

class _HeaderState extends ConsumerState<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: headerKey,
      margin: EdgeInsets.symmetric(horizontal: 80, vertical: 62),
      child: Row(
        children: [
          Flexible(flex: 2, child: _buildContent(context)),
          // Spacer(),
          // Flexible(child: AppImageProvider.assets(AppImages.headerImg))
          // Flexible(child: AppImageProvider.lottieAsset(AppImages.waving))
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _name(),
        15.vPad,
        _headline(),
        15.vPad,
        _desc(context),
      ],
    );
  }

  Widget _name() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi my name is",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        Text(
          "Amit Upadhyay",
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w400,
              color: AppColors.primary),
        )
      ],
    );
  }

  Widget _headline() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "I craft smart, cross-platform",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w400,
              color: AppColors.primary),
        ),
        Text(
          "app using Flutter",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w400,
              color: AppColors.primary),
        ),
      ],
    );
  }

  Widget _desc(BuildContext context) {
    return Text(
      "Experienced in designing, developing, and maintaining high-performance "
      "Flutter apps that deliver consistent experiences across iOS and Android.",
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.gray),
    );
  }
}
