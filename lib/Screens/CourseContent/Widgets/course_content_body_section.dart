import 'package:flutter/material.dart';

class CourseContentBodySection extends StatelessWidget {
  final String title;
  final String subtitle;

  const CourseContentBodySection(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.check_circle),
    );
  }
}
