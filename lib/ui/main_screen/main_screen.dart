import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constans.dart';
import 'package:portfolio/core/styles/text_styles.dart';
import 'package:portfolio/ui/main_screen/main_screen_vm.dart';
import 'package:portfolio/ui/sections/body/about_screen/about_screen.dart';
import 'package:portfolio/ui/sections/body/contact_screen/contact_screen.dart';
import 'package:portfolio/ui/sections/body/home_screen/home_screen.dart';
import 'package:portfolio/ui/sections/body/projects_screen/projects_screen.dart';
import 'package:portfolio/ui/sections/body/resume_screen/resume_screen.dart';
import 'package:portfolio/ui/sections/body/services_screen/services_screen.dart';
import 'package:portfolio/ui/sections/header/header.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class MainScreen extends StatelessWidget {

  const MainScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(create: (context) => MainScreenVM(),
    child: Consumer<MainScreenVM>(builder: (context, vm, child) {
      return Scaffold(
        key: vm.globalKey,
      drawer: Drawer(child: ListView(
        children: [
          kHeight(32.px),
          getListItem(title: "Home", onClick: (){vm.setIndex = 0; vm.openCloseDrawer();}, icon: Icons.home),
          getListItem(title: "About", onClick: (){vm.setIndex = 1; vm.openCloseDrawer();}, icon: Icons.info,),
          getListItem(title: "Services", onClick: (){vm.setIndex = 2; vm.openCloseDrawer();}, icon: Icons.workspaces),
          getListItem(title: "Projects", onClick: (){vm.setIndex = 3;vm.openCloseDrawer();}, icon: Icons.work),
          getListItem(title: "Contact", onClick: (){vm.setIndex = 4; vm.openCloseDrawer();}, icon: Icons.phone),
          getListItem(title: "Resume", onClick: (){vm.setIndex = 5; vm.openCloseDrawer();}, icon: Icons.toc_outlined),
        ],
      ),),

      body: Column(
        children: [
          Expanded( flex: 1, child: Header(vm: vm,)),
          Expanded( flex: 9, child: Container(color: Colors.white, child: getScreen(vm.tabIndex),)),
          Expanded( flex: 1, child: Container(color: Colors.blue,)),
        ],
      )
    //   body: ScreenTypeLayout.builder(
    //   mobile: (BuildContext context) => Container(color:Colors.blue),
    //   tablet: (BuildContext context) => Container(color:Colors.yellow),
    //   desktop: (BuildContext context) => Container(color:Colors.red, child: Center(child: 
    //   IconButton(onPressed: (() {
    //     vm.globalKey.currentState!.openDrawer();
    //   }),icon:Icon(Icons.menu),)),),
    // ),
    );
    },),); 

  }

  Widget getScreen(index) {
      
      switch(index) {
        case 0: 
        return const HomeScreen();
        case 1: 
        return const AboutScreen();
        case 2: 
        return const ServicesScreen();
        case 3: 
        return const ProjectsScreen();
        case 4: 
        return const ContactScreen();
        case 5: 
        return const ResumeScreen();
        default: return const SizedBox();
      }
    }

    Widget getListItem({required title, required onClick, required icon}) {

      return Material(child: InkWell( onTap: onClick, child:
       ListTile(title: Text(title, style: drawerListTextStyle,), 
       leading: Icon(icon, color: Colors.blue,),)));
    }

}