import 'package:flutter/material.dart';
import 'package:hrms/Pages/ProfilePage/components/textView.dart';

class professionalDetailsView extends StatelessWidget {
  const professionalDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textView(title: "User Code",text: "01"),
        textView(title: "Role",text: "CEO"),
        textView(title: "Department",text: "Administration"),
        textView(title: "Designation",text: "CEO"),
        textView(title: "Reporting Manager",text: "-"),
        textView(title: "Functional Manager",text: "-"),
        textView(title: "Joining Date",text: "-"),
      ],
    );
  }
}
