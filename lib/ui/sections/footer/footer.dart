import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constans.dart';
import 'package:portfolio/core/styles/text_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {

    if (sWidth(context) > 640) {
      return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          kWidth(32.px),
          Icon(Icons.copyright, size: 18.px, color: Colors.white,),
          kWidth(4),
          Text("All rights reserved (2023)", style: footerTextStyle,),
          const Expanded(child: SizedBox()),
          Text("Made by Muhammad Ahmed", style: footerTextStyle,),
          kWidth(32.px),
        ],
      );
    }

    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          kWidth(32.px),
          Icon(Icons.copyright, size: 18.px, color: Colors.white,),
          kWidth(4),
          Text("All rights reserved (2023)", style: footerTextStyle,),
          kWidth(32.px),
          Text("Made by Muhammad Ahmed", style: footerTextStyle,),
        ],
      ),
    );
  }
}