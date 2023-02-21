import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hrms/Utils/constants.dart';

import 'LoginScreen/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Image.asset("assets/images/splashscreen.png",fit: BoxFit.fill,));
  }
}
