import 'package:flutter/material.dart';

import 'package:hrms/Utils/constants.dart';
import 'package:hrms/Widgets/datePicker.dart';
import 'package:hrms/Widgets/dropDown.dart';
import 'package:hrms/Widgets/saveButton.dart';
import '../../../Widgets/sizedTextInput.dart';

class accountSettingView extends StatelessWidget {
  const accountSettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: size.height * 0.23,
                  width: size.width * 0.42,
                  decoration: BoxDecoration(
                    color: COLOR_BLUEMASK.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(style: BorderStyle.solid,width: 10.0,color: Colors.white60),
                  ),
                  child: Icon(Icons.person,color: COLOR_BLUEMASK,size: 130,),
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.image_outlined,size: 22,color: Colors.blue,),
                )
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  sizedTextInput(hintText: "First Name*", keyboardType: TextInputType.text),
                  sizedTextInput(hintText: "Last Name*", keyboardType: TextInputType.text),
                  sizedTextInput(hintText: "Mobile Number*", keyboardType: TextInputType.number),
                ],
              ),
            )
          ],
        ),
        sizedTextInput(hintText: "Personal Number*", keyboardType: TextInputType.number),
        sizedTextInput(hintText: "Personal Mail ID*", keyboardType: TextInputType.emailAddress),
        dropDown(dropDownList: ["Male","Female"], hint: "Select Gender*"),
        sizedTextInput(hintText: "Personal Address*", keyboardType: TextInputType.emailAddress),
        sizedTextInput(hintText: "Pincode*", keyboardType: TextInputType.emailAddress),
        datePicker(hintText: "Date of Birth*",),
        datePicker(hintText: "Anniversary*"),
        datePicker(hintText: "Kid's Birth Date*"),
        saveButton(text: "Save Changes"),
      ],
    );
  }
}
