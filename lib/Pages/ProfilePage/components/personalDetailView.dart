import 'package:flutter/material.dart';
import 'package:hrms/Pages/ProfilePage/components/textView.dart';

class personalDetailView extends StatelessWidget {
  const personalDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textView(title: "Full Name",text: "Parag Shah"),
        textView(title: "Mobile",text: "+91 9999887766",iconTrailing: Icons.verified_rounded,),
        textView(title: "Personal Mobile",text: "+91 9999887766"),
        textView(title: "Email ID",text: "parag.redjinni@gmail.com",iconTrailing: Icons.verified_rounded),
        textView(title: "Personal Email ID",text: "parag.shah@gmail.com"),
        textView(title: "Gender",text: "Male"),
        textView(title: "Address",text: "504, Laxmi Apartment,\nVesu, Surat"),
        textView(title: "Pincode",text: "395007"),
        textView(title: "Birth Date",text: "15th January 1984"),
        textView(title: "Anniversary Date",text: "-"),
        textView(title: "Kids Birth Date",text: "-"),

      ],
    );
  }
}
