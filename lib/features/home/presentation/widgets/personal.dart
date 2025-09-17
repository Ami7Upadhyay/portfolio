import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/utils/extensions/padding_extenstion.dart';
import 'package:portfolio/features/home/presentation/widgets/skills.dart';
import 'package:portfolio/shared/widgets/image.dart';

import '../../../../core/constants/app_images.dart';
import 'about_me.dart';
import 'header.dart';

class Personal extends ConsumerStatefulWidget {
  const Personal({super.key});

  @override
  ConsumerState<Personal> createState() => _PersonalState();
}

class _PersonalState extends ConsumerState<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        child: Column(
          children: [
            _appBar(),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(),
                  106.vPad,
                  AboutMe(),
                  106.vPad,
                  Skills(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AppImageProvider.svgAsset(AppImages.logo, height: 34, width: 24),
            5.hPad,
            Text(
              "Amit",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        Row(
          children: [
            menuBtn("home"),
            menuBtn("about me"),
            menuBtn("skill"),
            menuBtn("projects"),
            menuBtn("contact")
          ],
        )
      ],
    );
  }

  Widget menuBtn(String title) {
    return TextButton(
        onPressed: () {
          if (title == 'home') {
            scrollToSection(headerKey);
          } else if (title == 'about me') {
            scrollToSection(aboutMeKey);
          } else {
            scrollToSection(skillsKey);
          }
        },
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
        ));
  }

  void scrollToSection(GlobalKey key) {
    final currentContext = key.currentContext;
    if (currentContext != null) {
      Scrollable.ensureVisible(
        currentContext,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
}
