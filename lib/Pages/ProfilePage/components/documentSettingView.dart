import 'package:flutter/material.dart';
import 'package:hrms/Widgets/imagePicker.dart';
import 'package:hrms/Widgets/saveButton.dart';
import 'package:hrms/Widgets/sizedTextInput.dart';

class documentSettingView extends StatelessWidget {
  const documentSettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        imagePicker(hintText: "Upload Last Payslip*"),
        imagePicker(hintText: "Upload Last Resignaton Letter*"),
        imagePicker(hintText: "Upload Last Marksheet*"),
        imagePicker(hintText: "Upload Aadhar Card*"),
        imagePicker(hintText: "Upload Resume*"),
        imagePicker(hintText: "Upload Photo*"),
        imagePicker(hintText: "Upload Bank Details*"),
        sizedTextInput(hintText: "Total Experiecne*", keyboardType: TextInputType.text),
        sizedTextInput(hintText: "Total Relevant Experiecne*", keyboardType: TextInputType.text),
        sizedTextInput(hintText: "PF Number*", keyboardType: TextInputType.number),
        sizedTextInput(hintText: "UAN Number*", keyboardType: TextInputType.number),
        sizedTextInput(hintText: "ESIC Number*", keyboardType: TextInputType.number),
        sizedTextInput(hintText: "Bank Name*", keyboardType: TextInputType.text),
        sizedTextInput(hintText: "Account Number*", keyboardType: TextInputType.number),
        sizedTextInput(hintText: "IFSC Code*", keyboardType: TextInputType.text),
        saveButton(text: "Save Changes")
      ],
    );
  }
}
