import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constans.dart';
import 'package:portfolio/core/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isMobile = getDeviceType(MediaQuery.of(context).size) == DeviceScreenType.mobile;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/bg_home.jpg"), fit: BoxFit.cover, )
        //image: DecorationImage(image: AssetImage("assets/images/img_bg_home.jpg"), fit: BoxFit.cover, )


      ),

      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            CircleAvatar(backgroundImage: AssetImage("assets/images/dash_profile.jpg"),radius: 50),
            kHeight(8.px),
          Text("Hi, I am", style: normalTextStyle.copyWith(fontSize: isMobile ? 20.px : 32.px),),
          Text("<Muhammad Ahmed/>", style: nameTextStyleHome.copyWith(fontSize: isMobile ? 28 : 42.px),),
          AnimatedTextKit(
  animatedTexts: [
    TypewriterAnimatedText(
      'Flutter App Developer',
      textStyle:  normalTextStyle.copyWith(fontSize: isMobile ? 20.px : 32.px),
      speed: const Duration(milliseconds: 300),
    ),
  ],
  
  totalRepeatCount: 1,
  pause: const Duration(milliseconds: 500),
  displayFullTextOnTap: true,
  stopPauseOnTap: true,
),
          //Text("Flutter App Developer", style: normalTextStyle.copyWith(fontSize: isMobile ? 20.px : 32.px),),


        ],),
      ),
    );
  }
}