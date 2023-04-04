import 'package:flutter/material.dart';
import 'package:portfolio/core/styles/text_styles.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Projects", style: headerTextBtnStyle,));
  }
}