import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class textInput extends StatefulWidget {

  IconData? icon;
  final String hintText;
  final TextInputType keyboardType;
  bool obscureText;

  textInput({this.icon,required this.hintText,required this.keyboardType,this.obscureText = false});

  @override
  State<textInput> createState() => _textInputState();
}

class _textInputState extends State<textInput> {

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return TextField(
      obscureText: widget.obscureText,
      style: textLight(Colors.black,14),
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.hintText,
        prefixIcon: widget.icon != null ? Container(
          margin: EdgeInsets.only(right: 5,left: 1),
          padding: EdgeInsets.only(left: 1.0),
          decoration: BoxDecoration(
            color: COLOR_BLUEMASK.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Icon(
            widget.icon,
            color: COLOR_BLUE,
            size: 29,
          ),
        ) : null,
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