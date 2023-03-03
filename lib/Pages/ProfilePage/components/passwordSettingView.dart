import 'package:flutter/material.dart';
import 'package:hrms/Utils/constants.dart';
import 'package:hrms/Widgets/passwordInputChecker.dart';
import 'package:hrms/Widgets/saveButton.dart';
import 'package:hrms/Widgets/sizedTextInput.dart';

class passwordSettingView extends StatefulWidget {
  const passwordSettingView({Key? key}) : super(key: key);

  @override
  State<passwordSettingView> createState() => _passwordSettingViewState();
}

class _passwordSettingViewState extends State<passwordSettingView> {

  final formGlobalKey = GlobalKey < FormState > ();

  String? isPasswordValid(String? password) {
    //Pattern pattern = r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if(password!.isEmpty){
      return 'Password empty';
    }else if(password.length < 6){
      return 'Password too Short';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Form(
      key: formGlobalKey,
      child: Column(
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
          sizedTextInput(hintText: "*****", keyboardType: TextInputType.visiblePassword,validator: isPasswordValid,obscureText: true,),
          paaswordInputChecker(),
          sizedTextInput(hintText: "*****", keyboardType: TextInputType.visiblePassword, validator: isPasswordValid,obscureText: true,),
          saveButton(text: "Change Password"),
        ],
      ),
    );
  }
}
