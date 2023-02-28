import 'package:flutter/material.dart';
import 'package:hrms/Pages/ProfilePage/components/accountSettingView.dart';
import 'package:hrms/Pages/ProfilePage/components/documentSettingView.dart';

import 'package:hrms/Pages/ProfilePage/components/overViewDocumentsList.dart';
import 'package:hrms/Pages/ProfilePage/components/passwordSettingView.dart';
import 'package:hrms/Pages/ProfilePage/components/personalDetailView.dart';
import 'package:hrms/Pages/ProfilePage/components/professionalDetailsView.dart';
import '../../../Utils/constants.dart';

class singleSubTabView extends StatelessWidget {

  final int menuIndex;
  final int rootMenuIndex;
  singleSubTabView({required this.menuIndex,required this.rootMenuIndex});

  Widget selectRoute(){
    if(rootMenuIndex == 0) {
      if(menuIndex == 0){
        return personalDetailView();
      }
      else if(menuIndex == 1){
        return professionalDetailsView();
      }
      else{
        return overViewDocumentsList();
      }
    } else{
      if(menuIndex == 0){
        return accountSettingView();
      }
      else if(menuIndex == 1){
        return passwordSettingView();
      }
      else{
        return documentSettingView();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: COLOR_WHITE,
          boxShadow: [
            BoxShadow(
                color: COLOR_GREY,
                blurRadius: 0.1
            )
          ]
      ),
      margin: EdgeInsets.only(top: 8.0),
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: selectRoute(),
        // child: menuIndex == 0 ? personalDetailView() :
        // menuIndex == 1 ? professionalDetailsView() : overViewDocumentsList(),
      ),
    );
  }
}
