import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constans.dart';
import 'package:portfolio/core/styles/text_styles.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      width: 500,
      height: 300,
      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(2, 2), blurRadius: 1, spreadRadius: 1, color: Color.fromARGB(255, 206, 206, 206))
                      ]),

                      child: Column(
                        children: [
                          kHeight(16),
                          Text("Contact Me",style: normalTextStyle.copyWith(fontSize: 22, color: Colors.blue),),
                          Divider(
                            height: 20,
                            color: Color.fromARGB(255, 202, 202, 202),
                             thickness: 1,
),
                        ],
                      ),
                      

    ));
  }
}