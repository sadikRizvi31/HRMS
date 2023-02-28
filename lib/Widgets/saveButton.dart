import 'package:flutter/material.dart';
import 'package:hrms/Pages/HomePage/HomePage.dart';
import 'package:hrms/Utils/constants.dart';

class saveButton extends StatelessWidget {

  final String text;

  saveButton({required this.text});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.05,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: COLOR_BLUE,
        ),
        onPressed: () {
          if(text == 'Login'){
            Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => HomePage()));
          }
        },
        child: Text(text,style: textLight(COLOR_WHITE, 14),),
      ),
    );
  }
}