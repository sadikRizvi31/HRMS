import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class dropDown extends StatefulWidget {

  final List dropDownList;
  final String hint;


  dropDown({required this.dropDownList, required this.hint});

  @override
  State<dropDown> createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {

  String? currentSelectedValue;
  @override
  Widget build(BuildContext context) {



    final ThemeData themeData = Theme.of(context);
    return Container(
      padding: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: COLOR_BLUEMASK),
        borderRadius: BorderRadius.circular(8.0)
      ),
      margin: EdgeInsets.all(3.0),
      child: InputDecorator(
        decoration: InputDecoration(border: InputBorder.none,),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: currentSelectedValue,
            hint: Text(widget.hint,style: textLight(COLOR_GREY, 14),),
            isDense: true,
            isExpanded: true,
            items: widget.dropDownList.map((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value,style: themeData.textTheme.headline5,),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                currentSelectedValue = newValue.toString();
              });
            },
          ),
          ),
        ),
    );
  }
}