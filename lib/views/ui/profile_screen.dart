import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isVisible = false;

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
                  "Profile",
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
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/logos/pure_logo.png')),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Center(
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/logos/img.png"),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
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
                        Icons.person,
                        color: Color(0xff223F81),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xff939090), fontSize: 12),
                      hintText: "John Doe",
                      fillColor: Colors.white70),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                        Icons.email,
                        color: Color(0xff223F81),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xff939090), fontSize: 12),
                      hintText: "john.doe@joohndoe.com",
                      fillColor: Colors.white70),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                        Icons.mobile_screen_share_sharp,
                        color: Color(0xff223F81),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xff939090), fontSize: 12),
                      hintText: "+91 999 999 9999",
                      fillColor: Colors.white70),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
              height: 20,
            ),
            Container(
              width: 210,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff223F81),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45))),
                  onPressed: () {},
                  child: Text(
                    "Update Profile",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
