import 'package:flutter/material.dart';
import 'package:hrms/Utils/constants.dart';
import 'package:hrms/Widgets/passwordInputChecker.dart';
import 'package:hrms/Widgets/saveButton.dart';
import 'package:hrms/Widgets/sizedTextInput.dart';

class passwordSettingView extends StatelessWidget {
  const passwordSettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          height: size.height * 0.2,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: COLOR_GREY,width: 0.5),
            borderRadius: BorderRadius.circular(8.0)
          ),
          child: Icon(Icons.password,color: COLOR_BLUEMASK.withOpacity(0.5),size: 130,),
        ),
        sizedTextInput(hintText: "*****", keyboardType: TextInputType.visiblePassword),
        paaswordInputChecker(),
        sizedTextInput(hintText: "*****", keyboardType: TextInputType.visiblePassword),
        saveButton(text: "Change Password"),
      ],
    );
  }
}
