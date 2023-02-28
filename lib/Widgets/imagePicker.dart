import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Utils/constants.dart';

class imagePicker extends StatefulWidget {

  String hintText;

  imagePicker({required this.hintText});

  @override
  State<imagePicker> createState() => _imagePickerState();
}

class _imagePickerState extends State<imagePicker> {
  File? image;

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

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      padding: EdgeInsets.only(left: 8.0),
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: COLOR_BLUEMASK),
      ),
      child: TextField(
        readOnly: true,
        style: themeData.textTheme.headline5,
        keyboardType: TextInputType.none,
        decoration: new InputDecoration(
          isCollapsed: true,
          border: InputBorder.none,
          labelText: widget.hintText,
          labelStyle: textLight(COLOR_GREY, 14),
          suffixIcon: TextButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(COLOR_BLUEMASK),
              ),
              icon: Icon(Icons.file_present_outlined,size: 20,color: COLOR_WHITE),
              onPressed: () {
                pickImage();
                setState(() {
                  widget.hintText = image!.path.toString();
                });
              },
              label: Text('browse',style: TextStyle(color: COLOR_WHITE),)
          ),
        ),
      ),
    );
  }
}