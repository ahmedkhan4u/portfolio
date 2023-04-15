import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/strings.dart';
import 'package:portfolio/core/styles/colors.dart';
import 'package:portfolio/core/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileView(),
      tablet: (BuildContext context) => desktopView(),
      desktop: (BuildContext context) => desktopView(),
      //watch: (BuildContext context) => Container(color:Colors.purple),
    );
  }

  Widget desktopView() {
    return Row(children: [
      Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    aboutText,
                    textAlign: TextAlign.justify,
                    style: aboutTextStyle.copyWith(
                        color: blackColor, fontSize: 20.px),
                  ),
                ),
              ],
            ),
          )),
      Expanded(
          flex: 1,
          child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/images/img_mobile_app.jpg",
                fit: BoxFit.cover,
              )))
    ]);
  }

  Widget mobileView() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 40.h,
              child: Image.asset(
                "assets/images/img_mobile_app.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                aboutText,
                textAlign: TextAlign.justify,
                style:
                    aboutTextStyle.copyWith(color: blackColor, fontSize: 20.px),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
