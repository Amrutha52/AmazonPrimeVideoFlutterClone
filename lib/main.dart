import 'dart:io';

import 'package:amazonprimevideoclone/view/splash_screen/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'MyHttpOverrides.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Prime',

      home: Splashscreen(),
    );
  }
}

