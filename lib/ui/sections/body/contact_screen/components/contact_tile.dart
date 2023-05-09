import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constans.dart';
import 'package:portfolio/core/styles/text_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactTile extends StatelessWidget {
  IconData? icon;
  String? title;
  ContactTile({super.key, this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          kWidth(8),
          Flexible(
            child: Text(
              title!,
              style:
                  normalTextStyle.copyWith(fontSize: 18.px, color: Colors.black),
            ),
          ),
        ],
      ),
    ));
  }
}
