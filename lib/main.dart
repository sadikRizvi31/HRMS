import 'package:flutter/material.dart';
import 'package:hrms/Pages/SplashScreen.dart';
import 'package:hrms/Utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: COLOR_BLUE,accentColor: COLOR_WHITE, textTheme: TEXT_THEME_DEFAULT,fontFamily: 'NeuePlak'),
      home: SplashScreen(),
    );
  }
}
