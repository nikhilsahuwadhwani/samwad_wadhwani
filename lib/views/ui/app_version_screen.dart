import 'package:flutter/material.dart';

class AppVersionScreen extends StatelessWidget {
  const AppVersionScreen({Key? key}) : super(key: key);

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
                  "App Version",
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              "App version 1.0.1",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xff223F81)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "  Proudly presented and powered by Samvad",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xff223F81)),
            ),
            Spacer(),
            Container(
              width: 150,
              height: 70,
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Image.asset("assets/logos/pure_logo.png")),
                  Expanded(
                      flex: 7,
                      child: Image.asset("assets/logos/text_logo.png")),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
