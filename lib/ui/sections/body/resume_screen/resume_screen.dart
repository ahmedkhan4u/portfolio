import 'package:flutter/material.dart';
import 'package:portfolio/core/styles/text_styles.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Resume", style: headerTextBtnStyle,));
  }
}