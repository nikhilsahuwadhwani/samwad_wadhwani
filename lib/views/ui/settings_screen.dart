import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samvad_wadhwani/views/ui/app_version_screen.dart';
import 'package:samvad_wadhwani/views/ui/home_screen.dart';
import 'package:samvad_wadhwani/views/ui/notification_screen.dart';
import 'package:samvad_wadhwani/views/ui/profile_screen.dart';
import 'package:samvad_wadhwani/views/ui/support_screen.dart';

import '../../models/side_drawer_model.dart';

class SettingsScreen extends StatelessWidget {
  final List<SideDrawerModel> _sideDrawerItems = [
    SideDrawerModel(
        iconData: (Icons.person), title: "Profile Settings", function: () {}),
    SideDrawerModel(
        iconData: (Icons.home),
        title: "Home",
        function: () {
          Get.to(HomeScreen());
        }),
    SideDrawerModel(
        iconData: (Icons.support_agent),
        title: "Support",
        function: () {
          Get.to(SupportScreen());
        }),
    SideDrawerModel(
        iconData: (Icons.notifications),
        title: "Notifications",
        function: () {
          Get.to(NotificationScreen());
        }),
    SideDrawerModel(
        iconData: (Icons.copy),
        title: "App Version",
        function: () {
          Get.to(AppVersionScreen());
        }),
    SideDrawerModel(
        iconData: (Icons.privacy_tip), title: "Privacy", function: () {}),
    SideDrawerModel(
        iconData: (Icons.info_rounded), title: "About Us", function: () {}),
    SideDrawerModel(
        iconData: (Icons.logout),
        title: "Log Out",
        function: () {
          Get.to(HomeScreen());
        }),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xff223F81)),
          backgroundColor: Color(0xffF5F5F5),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text(
                  "Settings",
                  style: TextStyle(
                      color: Color(0xff223F81),
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: Container(
                    child: Container(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/logos/pure_logo.png'))),
              ),
            ],
          )),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.home,
                          size: 22,
                          color: Color(0xff223F81),
                        ),
                        title: Text(
                          "Home ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff223F81)),
                        ),
                        onTap: () {
                          Get.to(HomeScreen());
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          thickness: 1.00,
                          color: Color(0xff223F81),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          size: 22,
                          color: Color(0xff223F81),
                        ),
                        title: Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff223F81)),
                        ),
                        onTap: () {
                          Get.to(ProfileScreen());
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          thickness: 1.00,
                          color: Color(0xff223F81),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.notifications,
                          size: 22,
                          color: Color(0xff223F81),
                        ),
                        title: Text(
                          "Notifications",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff223F81)),
                        ),
                        onTap: () {
                          Get.to(NotificationScreen());
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          thickness: 1.00,
                          color: Color(0xff223F81),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.copy,
                          size: 22,
                          color: Color(0xff223F81),
                        ),
                        title: Text(
                          "App Version",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff223F81)),
                        ),
                        onTap: () {
                          Get.to(AppVersionScreen());
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          thickness: 1.00,
                          color: Color(0xff223F81),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          size: 22,
                          color: Color(0xff223F81),
                        ),
                        title: Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff223F81)),
                        ),
                        onTap: () {
                          Get.to(SettingsScreen());
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          thickness: 1.00,
                          color: Color(0xff223F81),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.logout,
                          size: 22,
                          color: Color(0xff223F81),
                        ),
                        title: Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff223F81)),
                        ),
                        onTap: () {
                          Get.to(HomeScreen());
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          thickness: 1.00,
                          color: Color(0xff223F81),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 150,
                    width: 200,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Image.asset("assets/logos/pure_logo.png"),
                          flex: 2,
                        ),
                        Expanded(
                          child: Image.asset("assets/logos/text_logo.png"),
                          flex: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
