import 'package:flutter/material.dart';
import 'package:portfolio/ui/main_screen/main_screen_vm.dart';
import 'package:portfolio/ui/sections/body/about_screen/about_screen.dart';
import 'package:portfolio/ui/sections/body/contact_screen/contact_screen.dart';
import 'package:portfolio/ui/sections/body/home_screen/home_screen.dart';
import 'package:portfolio/ui/sections/body/projects_screen/projects_screen.dart';
import 'package:portfolio/ui/sections/body/resume_screen/resume_screen.dart';
import 'package:portfolio/ui/sections/body/services_screen/services_screen.dart';
import 'package:portfolio/ui/sections/header/header.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';


class MainScreen extends StatelessWidget {

  const MainScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(create: (context) => MainScreenVM(),
    child: Consumer<MainScreenVM>(builder: (context, vm, child) {
      return Scaffold(
        key: vm.globalKey,
      drawer: Drawer(child: ListView(
        children: const [
          ListTile(title: Text("Home"), leading: Icon(Icons.home),)
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
}