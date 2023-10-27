import 'package:flutter/material.dart';
import 'package:loginscreen_maheer/loginscreen.dart';
import 'package:loginscreen_maheer/signupscreen.dart';
import 'package:loginscreen_maheer/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
