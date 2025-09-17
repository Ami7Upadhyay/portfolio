import 'package:flutter/material.dart';

class SkillsBox extends StatelessWidget {
  final String title;
  final List<String> skills;

  const SkillsBox({Key? key, required this.title, required this.skills})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: skills
                  .map((skill) => Chip(
                        label: Text(skill),
                        backgroundColor: Colors.blueGrey.shade50,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
