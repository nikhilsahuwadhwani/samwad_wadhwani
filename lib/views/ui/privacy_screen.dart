import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

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
                  "Privacy Version",
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Consumers have a basic right to be given detailed knowledge of the ways a company intends to use any personal data collected from or about them."
                "          While this has the potential to impact their decision to share certain information, the rise in worldwide online data sharing has creaConsumers have a basic right to be given detailed knowledge of the ways a company intends to use any personal data collected from or about them."
                "              While this has the potential to impact their decision to share certain information, the rise in worldwide online data sharing has created a much more dire need for transparency between consumer and company."
                "  In the past, you may have thought that a Privacy Policy was an unnecessary piece of legal jargon that no one actually paid much attention to. While that may have been true, consumers are becoming a lot more protective over their online personal data - and rightly so."
                " Misuse of consumer personal data can lead to a number of security concerns, such as personal identity theft, banking and financial theft, credit card scams and more. Keeping consumer data safeguarded against risks such as these has become a legal mandate."
                " ted a much more dire need for transparency between consumer and company."
                " In the past, you may have thought that a Privacy Policy was an unnecessary piece of legal jargon that no one actually paid much attention to. While that may have been true, consumers are becoming a lot more protective over their online personal data - and rightly so."
                "Misuse of consumer personal data can lead to a number of security concerns, such as personal identity theft, banking and financial theft, credit card scams and more. Keeping consumer data safeguarded against risks such as these has become a legal mandate.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff223F81)),
              ),
            ),
            SizedBox(
              height: 20,
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
