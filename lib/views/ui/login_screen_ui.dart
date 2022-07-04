import 'package:flutter/material.dart';

import '../../utils/constants/textstyle.dart';

class LoginScreenUI extends StatefulWidget {
  @override
  State<LoginScreenUI> createState() => _LoginScreenUIState();
}

class _LoginScreenUIState extends State<LoginScreenUI> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                  width: 210,
                  height: 168,
                  child: Image.asset('assets/logos/samvad_logo.png')),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Hi, Welcome to SAMVAD',
              style: Kh1,
            ),
            SizedBox(
              height: 40,
            ),
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45.0)),
              child: Container(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.mobile_screen_share,
                        color: Color(0xff223F81),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xff939090), fontSize: 12),
                      hintText: "Username / Email",
                      fillColor: Colors.white70),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45.0)),
              child: Container(
                width: 350,
                height: 50,
                child: TextField(
                  obscureText: isVisible == true ? false : true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Icon(
                          isVisible == true
                              ? Icons.visibility
                              : Icons.visibility_off_sharp,
                          color: Color(0xff223F81),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xff223F81),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xff939090), fontSize: 12),
                      hintText: 'Password',
                      fillColor: Colors.white70),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Powered by Samvad",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                    color: Color(0xff223F81)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
