import 'package:flutter/material.dart';
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
        onPressed: () {},
        child: Text(text,style: themeData.textTheme.headline4,),
      ),
    );
  }
}