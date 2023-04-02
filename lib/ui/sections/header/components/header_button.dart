import 'package:flutter/material.dart';
import 'package:portfolio/core/styles/text_styles.dart';


class HeaderButton extends StatelessWidget {

  String? title;
  VoidCallback? onPressed;
  int? selectedIndex;

  HeaderButton({super.key, required this.title,required this.onPressed, this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return TextButton(child: Text(title.toString(),style: headerTextBtnStyle,), onPressed: onPressed);
  }
}