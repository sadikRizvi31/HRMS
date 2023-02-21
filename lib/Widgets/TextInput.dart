import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class textInput extends StatefulWidget {

  final IconData icon;
  final String hintText;
  final TextInputType keyboardType;
  bool obscureText;

  textInput({required this.icon,required this.hintText,required this.keyboardType,this.obscureText = false});

  @override
  State<textInput> createState() => _textInputState();
}

class _textInputState extends State<textInput> {

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return TextField(
      obscureText: widget.obscureText,
      style: textLight(Colors.black,15),
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.hintText,
        prefixIcon: Container(
          margin: EdgeInsets.only(right: 10,left: 1),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: COLOR_BLUEMASK.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Icon(
            widget.icon,
            color: COLOR_BLUE,
            size: 29,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: COLOR_BLUEMASK,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: COLOR_BLUE,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: COLOR_BLUEMASK,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}