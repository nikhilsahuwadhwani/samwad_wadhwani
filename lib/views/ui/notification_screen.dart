import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
                  "Notification",
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
      body: Column(
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.notifications,
                size: 25,
                color: Color(0xff223F81),
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New update from twitter".toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223F81)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "New Trending News,View Now",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xff133A1B),
            thickness: 0.7,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.notifications,
                size: 25,
                color: Color(0xff223F81),
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New update from twitter".toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223F81)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "New Trending News,View Now",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xff133A1B),
            thickness: 0.7,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.notifications,
                size: 25,
                color: Color(0xff223F81),
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New update from twitter".toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223F81)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "New Trending News,View Now",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xff133A1B),
            thickness: 0.7,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.notifications,
                size: 25,
                color: Color(0xff223F81),
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New update from twitter".toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223F81)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "New Trending News,View Now",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xff133A1B),
            thickness: 0.7,
          ),
        ],
      ),
    );
  }
}
