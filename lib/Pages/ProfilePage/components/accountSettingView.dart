import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hrms/Utils/constants.dart';
import 'package:hrms/Widgets/datePicker.dart';
import 'package:hrms/Widgets/dropDown.dart';
import 'package:hrms/Widgets/saveButton.dart';
import 'package:image_picker/image_picker.dart';
import '../../../Widgets/sizedTextInput.dart';

class accountSettingView extends StatefulWidget {
  const accountSettingView({Key? key}) : super(key: key);

  @override
  State<accountSettingView> createState() => _accountSettingViewState();
}

class _accountSettingViewState extends State<accountSettingView> {

  File? image;

  final formGlobalKey = GlobalKey < FormState > ();

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  String? _phoneNumberValidator(String? value) {
    RegExp regex = new RegExp(r'^(?:[+0]9)?[0-9]{10}$');
    if (!regex.hasMatch(value!))
      return 'Enter Valid Phone Number';
    else
      return null;
  }

  String? isEmailValid(String? email) {
    //Pattern pattern = r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if(!regex.hasMatch(email!)){
      return "Enter valid email";
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
                    child: image != null ? Image.file(image!) : Icon(Icons.person,color: COLOR_BLUEMASK,size: 130,),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                        icon: Icon(Icons.image_outlined,size: 22,color: Colors.blue),
                      onPressed: () {
                          pickImage();
                      },
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    sizedTextInput(hintText: "First Name*", keyboardType: TextInputType.text),
                    sizedTextInput(hintText: "Last Name*", keyboardType: TextInputType.text),
                    sizedTextInput(hintText: "Mobile Number*", keyboardType: TextInputType.number, validator: _phoneNumberValidator,),
                  ],
                ),
              )
            ],
          ),
          sizedTextInput(hintText: "Personal Number*", keyboardType: TextInputType.number,validator: _phoneNumberValidator,),
          sizedTextInput(hintText: "Personal Mail ID*", keyboardType: TextInputType.emailAddress,validator: isEmailValid,),
          dropDown(dropDownList: ["Male","Female"], hint: "Select Gender*"),
          sizedTextInput(hintText: "Personal Address*", keyboardType: TextInputType.emailAddress),
          sizedTextInput(hintText: "Pincode*", keyboardType: TextInputType.emailAddress),
          datePicker(hintText: "Date of Birth*",),
          datePicker(hintText: "Anniversary*"),
          datePicker(hintText: "Kid's Birth Date*"),
          saveButton(text: "Save Changes"),
        ],
      ),
    );
  }
}
