import 'package:aula8_camp/pages/splashscreen_page.dart';
import 'package:aula8_camp/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        accentColor: seccondaryColor,
      ),
      home: SplashScreenPage(),
    );
  }
}

