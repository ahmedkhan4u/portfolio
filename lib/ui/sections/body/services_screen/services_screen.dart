import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constans.dart';
import 'package:portfolio/core/constants/strings.dart';
import 'package:portfolio/core/styles/colors.dart';
import 'package:portfolio/core/styles/text_styles.dart';
import 'package:portfolio/ui/sections/body/services_screen/components/image_container.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

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
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Text(
              servicesText,
              textAlign: TextAlign.justify,
              style: servicesTextStyle.copyWith(
                  color: blackColor, fontSize: 20.px),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageContainer(imagePath: "assets/images/img_android.png", color: Colors.green,),
                kWidth24,
                ImageContainer(imagePath: "assets/images/img_ios2.png", color: Colors.black,),
                kWidth24,
                ImageContainer(imagePath: "assets/images/img_web.png", color: Colors.blue,)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget mobileView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Text(
              servicesText,
              textAlign: TextAlign.justify,
              style: servicesTextStyle.copyWith(
                  color: blackColor, fontSize: 20.px),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageContainer(imagePath: "assets/images/img_android.png", color: Colors.green,),
                kHeight24,
                ImageContainer(imagePath: "assets/images/img_ios2.png", color: Colors.black,),
                kHeight24,
                ImageContainer(imagePath: "assets/images/img_web.png", color: Colors.blue,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
