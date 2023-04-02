import 'package:flutter/material.dart';
import 'package:portfolio/ui/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home:MainScreen(),);
  }
}
