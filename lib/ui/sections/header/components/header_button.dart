import 'package:flutter/material.dart';
import 'package:portfolio/core/styles/text_styles.dart';


// ignore: must_be_immutable
class HeaderButton extends StatelessWidget {

  String? title;
  VoidCallback? onPressed;
  int? selectedIndex;
  bool? isSelected;

  HeaderButton({super.key, required this.title,required this.onPressed, this.selectedIndex, isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    child: TextButton(onPressed: onPressed, 
    child: Text(title.toString(),style: headerTextBtnStyle,)));
  }
}