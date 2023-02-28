import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../Utils/constants.dart';

class datePicker extends StatefulWidget {

  String hintText;

  datePicker({required this.hintText});

  @override
  State<datePicker> createState() => _datePickerState();
}

class _datePickerState extends State<datePicker> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: COLOR_BLUEMASK)
      ),
      child: TextField(
        keyboardType: TextInputType.none,
        readOnly: true,
        decoration: new InputDecoration(
          isCollapsed: true,
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: TextStyle(fontSize: 14),
        ),
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context, initialDate: DateTime.now(),
              firstDate: DateTime(1945), //DateTime.now() - not to allow to choose before today.
              lastDate: DateTime(2999),
          );

          if(pickedDate != null ){
            print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            print(formattedDate); //formatted date output using intl package =>  2021-03-16
            //you can implement different kind of Date Format here according to your requirement

            setState(() {
              widget.hintText = formattedDate; //set output date to TextField value.
            });
          }else{
            print("Date is not selected");
          }
        },
      ),
    );
  }
}