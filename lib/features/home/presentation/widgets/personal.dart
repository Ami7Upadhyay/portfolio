import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/utils/extensions/padding_extenstion.dart';
import 'package:portfolio/shared/widgets/image.dart';

import '../../../../core/constants/app_images.dart';
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
                child: ListView(
              children: [Header()],
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
              "Personal",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        Row(
          children: [
            menuBtn("Home"),
            menuBtn("About Me"),
            menuBtn("Skill"),
            menuBtn("Projects"),
            menuBtn("Contact")
          ],
        )
      ],
    );
  }

  Widget menuBtn(String title) {
    return TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
        ));
  }
}
