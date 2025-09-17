import 'package:flutter/material.dart';

import '../../../../shared/widgets/skill_box.dart';
import '../../../../shared/widgets/title_header.dart';

final skillsKey = GlobalKey();

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildContent(context);
  }

  Widget _buildContent(BuildContext context) {
    return Container(
        key: skillsKey,
        margin: EdgeInsets.symmetric(horizontal: 80, vertical: 60),
        child: _buildSkills(context));
  }

  Widget _buildSkills(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleHeader(title: 'skill'),
        SkillsBox(
          title: 'Skills',
          skills: ['Flutter', 'Dart', 'Firebase', 'REST API', 'UI/UX'],
        )
      ],
    );
  }
}
