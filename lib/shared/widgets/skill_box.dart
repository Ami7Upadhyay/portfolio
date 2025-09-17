import 'package:flutter/material.dart';

class SkillsTable extends StatelessWidget {
  final String header; // Table header text
  final List<String> skills; // List of skills to display

  const SkillsTable({
    super.key,
    required this.header,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    // Split skills into rows of 2 items each
    final rows = <List<String>>[];
    for (var i = 0; i < skills.length; i += 2) {
      rows.add(skills.sublist(
        i,
        i + 2 > skills.length ? skills.length : i + 2,
      ));
    }

    return IntrinsicWidth(
      // <-- makes width based on content
      child: IntrinsicHeight(
        // <-- makes height based on content
        child: Table(
          defaultColumnWidth:
              const IntrinsicColumnWidth(), // auto size each column
          border: TableBorder.all(
            color: Colors.grey.shade400,
            width: 1,
          ),
          children: [
            // Header Row
            TableRow(
              decoration: const BoxDecoration(color: Colors.black87),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    header,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            // Skills Row
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min, // shrink-wrap vertically
                    children: rows.map((rowSkills) {
                      // Join each row’s skills with spacing
                      final textLine = rowSkills.join('     ');
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          textLine,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.white70),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
