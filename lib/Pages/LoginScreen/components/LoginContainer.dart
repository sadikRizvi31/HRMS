import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';
import '../../../Widgets/TextInput.dart';
import '../../../Widgets/forgotPasswordLink.dart';
import '../../../Widgets/saveButton.dart';

class LoginContainer extends StatelessWidget {
  LoginContainer({Key? key}) : super(key: key);

  final formGlobalKey = GlobalKey < FormState > ();

  String? isEmailValid(String? email) {
    //Pattern pattern = r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if(!regex.hasMatch(email!)){
      return "Enter valid email";
    }
    return null;
  }

  String? isPasswordValid(String? password) {
    //Pattern pattern = r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if(password!.isEmpty){
      return 'Password empty';
    }else if(password.length < 3){
      return 'PasswordShort';
    }
    return null;
  }

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
      child: Form(
        key: formGlobalKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Login",style: textBold(COLOR_BLUE,25),),
              Text("Login to your Account",style: textLight(COLOR_GREY,15),),
              SizedBox(height: height * 0.03,),
              textInput(icon: Icons.mail_sharp, hintText: "Enter Mail ID*",keyboardType: TextInputType.emailAddress,validator: isEmailValid),
              SizedBox(height: height * 0.02,),
              textInput(icon: Icons.key, hintText: "Password*",keyboardType: TextInputType.visiblePassword,obscureText: true,validator: isPasswordValid),
              SizedBox(height: height * 0.04,),
              saveButton(text: "Login"),
              SizedBox(height: height * 0.01,),
              forgotPasswordLink(),
            ],
          ),
        ),
      ),
    );
  }
}
