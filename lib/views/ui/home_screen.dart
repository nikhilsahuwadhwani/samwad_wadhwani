import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samvad_wadhwani/views/ui/app_version_screen.dart';
import 'package:samvad_wadhwani/views/ui/notification_screen.dart';
import 'package:samvad_wadhwani/views/ui/profile_screen.dart';
import 'package:samvad_wadhwani/views/ui/settings_screen.dart';

import './print_media.dart';
import '../../models/side_drawer_model.dart';

class HomeScreen extends StatelessWidget {
  final List<SideDrawerModel> _sideDrawerItems = [
    SideDrawerModel(
        iconData: (Icons.home), title: "Home", function: "HomeScreen"),
    SideDrawerModel(
        iconData: (Icons.person), title: "Profile", function: "ProfileScreen"),
    SideDrawerModel(
        iconData: (Icons.notifications),
        title: "Notifications",
        function: "NotificationScreen"),
    SideDrawerModel(
        iconData: (Icons.copy),
        title: "App Version",
        function: "AppVersionScreen"),
    SideDrawerModel(
        iconData: (Icons.settings),
        title: "Settings",
        function: "SettingsScreen"),
    SideDrawerModel(
        iconData: (Icons.logout), title: "Log Out", function: "HomeScreen"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(120))),
        child: Container(
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
      ),
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 85,
        backgroundColor: Color(0xffF5F5F5),
        elevation: 0,
        centerTitle: true,
        title: Container(
          width: 230,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: 60, child: Image.asset('assets/logos/pure_logo.png')),
              SizedBox(
                width: 10,
              ),
              Expanded(child: Image.asset('assets/logos/text_logo.png')),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(PrintMediaScreen(
                          title: "Print Media",
                        ));
                      },
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                    'assets/home_screen_icons/icon_news.png'),
                                flex: 7,
                              ),
                              Expanded(
                                child: Text(
                                  "Print Media",
                                  style: TextStyle(
                                      color: Color(0xffF26522),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                                flex: 2,
                              ),
                            ],
                          ),
                        ),
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35)),
                      ),
                    )),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(PrintMediaScreen(
                          title: "TV Media",
                        ));
                      },
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                    'assets/home_screen_icons/icon_tv.png'),
                                flex: 7,
                              ),
                              Expanded(
                                child: Text(
                                  "TV Media",
                                  style: TextStyle(
                                      color: Color(0xff42ADE2),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                                flex: 2,
                              ),
                            ],
                          ),
                        ),
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35)),
                      ),
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(PrintMediaScreen(
                          title: "Online Media",
                        ));
                      },
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                    'assets/home_screen_icons/icon_digital.png'),
                                flex: 7,
                              ),
                              Expanded(
                                child: Text(
                                  "Online Media",
                                  style: TextStyle(
                                      color: Color(0xffFDB813),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                                flex: 2,
                              ),
                            ],
                          ),
                        ),
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35)),
                      ),
                    )),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(PrintMediaScreen(
                          title: "Social Media",
                        ));
                      },
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                    'assets/home_screen_icons/icon_sm.png'),
                                flex: 7,
                              ),
                              Expanded(
                                child: Text(
                                  "Social Media",
                                  style: TextStyle(
                                      color: Color(0xff2E6AB3),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                                flex: 2,
                              ),
                            ],
                          ),
                        ),
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35)),
                      ),
                    )),
              ),
            ],
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Card(
                  color: Colors.white,
                  child: Container(
                    height: 300,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Text(
                            'PRINT COVERAGE',
                            style: TextStyle(
                                color: Color(0xff223F81),
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Image.asset(
                              'assets/home_screen_icons/coverage.png'),
                          flex: 7,
                        ),
                      ],
                    ),
                  ),
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                )),
          ),
        ],
      ),
    ));
  }
}
