import 'package:flutter/material.dart';
import 'package:hrms/Pages/ProfilePage/components/textView.dart';

class overViewDocumentsList extends StatelessWidget {
  const overViewDocumentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textView(title: "Last Payslip",iconData: Icons.picture_as_pdf ,text: "LastPayslip.pdf"),
        textView(title: "Last Registration\nLetter",iconData: Icons.picture_as_pdf ,text: "Registration Letter.pdf"),
        textView(title: "Last Marksheet",iconData: Icons.picture_as_pdf ,text: "Marksheet.pdf"),
        textView(title: "Aadhar Card",iconData: Icons.picture_as_pdf ,text: "Aadhar Card.pdf"),
        textView(title: "Resume",iconData: Icons.picture_as_pdf ,text: "Resume.pdf"),
        textView(title: "Photo",iconData: Icons.picture_as_pdf ,text: "Photo.pdf"),
        textView(title: "Bank Details",iconData: Icons.picture_as_pdf ,text: "Bank Passbook.pdf"),
        textView(title: "Total Experience",text: "00"),
        textView(title: "Total Relevant\nExperience",text: "00"),
        textView(title: "PF Number",text: "00"),
        textView(title: "UAN Number",text: "00"),
        textView(title: "ESIC Number",text: "00"),
        textView(title: "Bank Name",text: "Bank of India"),
        textView(title: "Account Number",text: "00"),
        textView(title: "Total Experience",text: "BARIOVESSUR"),
      ],
    );
  }
}
