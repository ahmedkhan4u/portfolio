import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constans.dart';
import 'package:portfolio/ui/sections/header/components/header_button.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        HeaderButton(title: "Home", onPressed: (){},),
        kWidth24,
        HeaderButton(title: "About", onPressed: (){},),
        kWidth24,
        HeaderButton(title: "Services", onPressed: (){},),
        kWidth24,
        HeaderButton(title: "Projects", onPressed: (){},),
        kWidth24,
        HeaderButton(title: "Contact", onPressed: (){},),
        kWidth24,
        HeaderButton(title: "Resume", onPressed: (){},),



    ]),);
  }
}