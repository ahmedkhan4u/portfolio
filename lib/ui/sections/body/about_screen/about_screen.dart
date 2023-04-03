import 'package:flutter/material.dart';
import 'package:portfolio/core/styles/text_styles.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("About", style: headerTextBtnStyle,));
  }
}