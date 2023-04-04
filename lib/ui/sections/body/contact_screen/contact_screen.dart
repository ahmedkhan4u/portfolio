import 'package:flutter/material.dart';
import 'package:portfolio/core/styles/text_styles.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Contact", style: headerTextBtnStyle,));
  }
}