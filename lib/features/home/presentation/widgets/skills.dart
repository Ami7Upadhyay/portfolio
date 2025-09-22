import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../../../core/models/skill_category.dart';
import '../../../../shared/widgets/skill_box.dart';
import '../../../../shared/widgets/title_header.dart';

final skillsKey = GlobalKey();

class TechnicalSkills extends StatefulWidget {
  const TechnicalSkills({super.key});

  @override
  State<TechnicalSkills> createState() => _SkillsState();
}

class _SkillsState extends State<TechnicalSkills> {
  List<Skills> skillsCat = [];

  @override
  void initState() {
    loadSkills();
    super.initState();
  }

  loadSkills() async {
    final String jsonString =
        await rootBundle.loadString('assets/json/skills.json');
    final SkillCategory skillsModel =
        SkillCategory.fromJson(json.decode(jsonString));
    setState(() {
      skillsCat = skillsModel.skills ?? [];
    });
  }

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
        Wrap(
            spacing: 16,
            runSpacing: 30,
            children: skillsCat
                .map((c) =>
                    SkillsTable(header: c.header ?? '', skills: c.skills ?? []))
                .toList())
      ],
    );
  }
}
