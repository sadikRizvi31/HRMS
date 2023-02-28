import 'package:flutter/material.dart';
import 'package:hrms/Pages/ProfilePage/components/profileInfo.dart';
import 'package:hrms/Pages/ProfilePage/components/subTabBar.dart';

import '../../../Utils/constants.dart';
import '../../../Widgets/customWidgets.dart';

class profileContainer extends StatefulWidget {
  const profileContainer({Key? key}) : super(key: key);

  @override
  State<profileContainer> createState() => _profileContainerState();
}

class _profileContainerState extends State<profileContainer> with SingleTickerProviderStateMixin {

  late TabController controller;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller.addListener(_handleTabChange);
  }

  _handleTabChange() {
    setState(() {
      currentIndex = controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);

    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5.0,right: 10.0,left: 10.0),
            height: size.height * 0.2889,
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
            child: Column(
              children: [
                profileInfo(),
                SizedBox(height: 10.0,),
                leaves(),
                TabBar(
                  labelPadding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  labelStyle: themeData.textTheme.headline4,
                  unselectedLabelStyle: themeData.textTheme.headline4,
                  indicatorColor: COLOR_BLUEMASK,
                  indicatorWeight: 2.0,
                  controller: controller,
                  unselectedLabelColor: COLOR_GREY,
                  labelColor: COLOR_BLUEMASK,
                  onTap: (index) {},
                  tabs: [
                    Tab(text: "Overview",),
                    Tab(text: "Settings"),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                subTabBar(tabMenu: ["Personal\nDetails","Professional\nDetails","Documents"],rootMenuIndex: controller.index,),
                subTabBar(tabMenu: ["Account\nSetting","Password\nSetting","Documents\nSetting"],rootMenuIndex: controller.index,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
