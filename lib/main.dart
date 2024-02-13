import 'package:flutter/material.dart';
import 'package:register/pages/intropage.dart';
import 'package:register/theme/light.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register',
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: light,
    );
  }
}
