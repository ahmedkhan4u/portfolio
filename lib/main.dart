import 'package:flutter/material.dart';
import 'package:portfolio/ui/main_screen/main_screen.dart';
import 'package:portfolio/ui/main_screen/main_screen_vm.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => MaterialApp(
        home: MultiProvider(providers: [
          ChangeNotifierProvider<MainScreenVM>(
            create: (context) => MainScreenVM(),
          )
        ], child: MainScreen()),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
