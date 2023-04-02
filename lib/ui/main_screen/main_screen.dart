import 'package:flutter/material.dart';
import 'package:portfolio/ui/main_screen/main_screen_vm.dart';
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
      body: ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Container(color:Colors.blue),
      tablet: (BuildContext context) => Container(color:Colors.yellow),
      desktop: (BuildContext context) => Container(color:Colors.red, child: Center(child: 
      IconButton(onPressed: (() {
        vm.globalKey.currentState!.openDrawer();
      }),icon:Icon(Icons.menu),)),),
    ),
    );
    },),);
    
    
  
  }
}