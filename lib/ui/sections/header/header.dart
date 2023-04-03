import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constans.dart';
import 'package:portfolio/ui/main_screen/main_screen_vm.dart';
import 'package:portfolio/ui/sections/header/components/header_button.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  MainScreenVM? vm;
  Header({super.key, this.vm});

  @override
  Widget build(BuildContext context) {
    
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
         child: sWidth(context) < 800 
         ? 
         Align(alignment: Alignment.centerLeft, child: IconButton(onPressed: () {
          vm?.openCloseDrawer();
         }, icon: const Icon(Icons.menu,color: Colors.blue,))) 
         : Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          HeaderButton(title: "Home", onPressed: (){
            vm!.setIndex = 0;
          },),
          kWidth24,
          HeaderButton(title: "About", onPressed: (){
            vm!.setIndex = 1;
          },),
          kWidth24,
          HeaderButton(title: "Services", onPressed: (){
            vm!.setIndex = 2;
          },),
          kWidth24,
          HeaderButton(title: "Projects", onPressed: (){
            vm!.setIndex = 3;
          },),
          kWidth24,
          HeaderButton(title: "Contact", onPressed: (){
            vm!.setIndex = 4;
          },),
          kWidth24,
          HeaderButton(title: "Resume", onPressed: (){
            vm!.setIndex = 5;
          },),
         ]),);
  }
}