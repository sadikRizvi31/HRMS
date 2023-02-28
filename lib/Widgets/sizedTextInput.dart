import 'package:flutter/material.dart';
import 'package:hrms/Widgets/TextInput.dart';

class sizedTextInput extends StatelessWidget {

  IconData? icon;
  final String hintText;
  final TextInputType keyboardType;
  bool obscureText;

  sizedTextInput({this.icon,required this.hintText,required this.keyboardType,this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.0,bottom: 3.0,left: 3.0,right: 3.0),
      child: textInput(icon: icon,hintText: hintText,keyboardType: keyboardType,obscureText: obscureText,),
    );
  }
}
