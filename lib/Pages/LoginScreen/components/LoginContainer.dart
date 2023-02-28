import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';
import '../../../Widgets/TextInput.dart';
import '../../../Widgets/forgotPasswordLink.dart';
import '../../../Widgets/saveButton.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.07,vertical: height * 0.02),
      width: width,
      height: height * 0.45,
      decoration: const BoxDecoration(
          color: COLOR_WHITE,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: COLOR_BLUEMASK,
              spreadRadius: 1,
            )
          ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Login",style: textBold(COLOR_BLUE,25),),
          Text("Login to your Account",style: textLight(COLOR_GREY,15),),
          SizedBox(height: height * 0.03,),
          textInput(icon: Icons.mail_sharp, hintText: "Enter Mail ID*",keyboardType: TextInputType.emailAddress),
          SizedBox(height: height * 0.02,),
          textInput(icon: Icons.key, hintText: "Password*",keyboardType: TextInputType.visiblePassword,obscureText: true),
          SizedBox(height: height * 0.04,),
          saveButton(text: "Login"),
          SizedBox(height: height * 0.01,),
          forgotPasswordLink(),
        ],
      ),
    );
  }
}
