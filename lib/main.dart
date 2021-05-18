import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_calculator/homepage.dart';
import 'package:neumorphic_calculator/theme/light_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
            child: HomePage(),
          ),
        ),
      ),
    );
  }
}
