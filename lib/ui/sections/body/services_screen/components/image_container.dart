import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ImageContainer extends StatelessWidget {

  String? imagePath;

  ImageContainer({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
                  width: 200.px,
                  height: 200.px,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(2, 2), blurRadius: 2, spreadRadius: 2, color: Colors.blueGrey)
                      ]),
                  child: Image.asset(imagePath!, color: Colors.black,fit: BoxFit.contain,)
                );
  }
}