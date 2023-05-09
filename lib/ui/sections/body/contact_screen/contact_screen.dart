import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constans.dart';
import 'package:portfolio/core/styles/text_styles.dart';
import 'package:portfolio/ui/sections/body/contact_screen/components/contact_tile.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 400,
      height: 220,
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 1,
                spreadRadius: 1,
                color: Color.fromARGB(255, 206, 206, 206))
          ]),
      child: Column(
        children: [
          kHeight(16),
          Text(
            "Contact Me",
            style: normalTextStyle.copyWith(fontSize: 22, color: Colors.blue),
          ),
          const Divider(
            height: 20,
            color: Color.fromARGB(255, 202, 202, 202),
            thickness: 1,
          ),
          ContactTile(
            icon: Icons.email,
            title: "ahmedkhan871871@gmail.com",
          ),
          ContactTile(
            icon: Icons.phone,
            title: "+92331-5429353",
          ),
          ContactTile(
            icon: Icons.link,
            title: "https://github.com/ahmedkhan4u",
          ),
        ],
      ),
    ));
  }
}
