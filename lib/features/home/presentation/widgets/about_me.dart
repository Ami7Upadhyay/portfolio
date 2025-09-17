import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/utils/extensions/padding_extenstion.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../shared/widgets/image.dart';
import '../../../../shared/widgets/title_header.dart';

final aboutMeKey = GlobalKey();

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  final String aboutMe = "Hi, my name is Amit Upadhyay.";
  final String aboutMe2 =
      "I have around 6 years of experience as a Flutter developer, where I’ve been designing, "
      "developing, and maintaining cross-platform mobile applications. My expertise is in"
      " building scalable and efficient apps using Flutter and Dart, and I focus a lot on "
      "following modern development practices."
      " I’m highly experienced in integrating RESTful APIs, "
      "managing state with tools like Provider and Riverpod, and working with MVVM as well as "
      "clean architecture.";
  final String aboutMe3 =
      " Over the years, I’ve also worked on performance optimization "
      "and third-party integrations, ensuring apps are both smooth and reliable. "
      "I’m very passionate about writing clean, maintainable code and delivering high-quality"
      " mobile solutions that create value for both users and businesses."
      " I’m excited about opportunities where I can contribute my technical skills while "
      "continuing to grow and learn.";

  @override
  Widget build(BuildContext context) {
    return _buildContent(context);
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      key: aboutMeKey,
      margin: EdgeInsets.symmetric(horizontal: 80, vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(flex: 2, child: _aboutMe(context)),
          25.vPad,
          Flexible(
              child: AppImageProvider.assets(AppImages.aboutMeImg, height: 508))
        ],
      ),
    );
  }

  Widget _aboutMe(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [TitleHeader(title: 'about-me'), _details()],
    );
  }

  Widget _details() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        aboutText(aboutMe),
        16.vPad,
        aboutText(aboutMe2),
        16.vPad,
        aboutText(aboutMe3)
      ],
    );
  }

  Widget aboutText(String txt) {
    return Text(
      txt,
      textAlign: TextAlign.justify,
      style: TextStyle(
          color: AppColors.gray, fontWeight: FontWeight.w400, fontSize: 16),
    );
  }
}
