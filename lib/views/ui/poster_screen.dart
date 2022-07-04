import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/home_screen.dart';

class PosterScreen extends StatelessWidget {
  const PosterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                child: Image.asset(
                  "assets/logos/samvad_logo.png",
                  scale: 0.7,
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlider(
                    options: CarouselOptions(height: 500.0),
                    items: [
                      "assets/slider_images/slider_1.png",
                      "assets/slider_images/slider_1.png",
                      "assets/slider_images/slider_1.png",
                      "assets/slider_images/slider_1.png",
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.yellow,
                              ),
                              child: Image.asset(i),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  )),
              flex: 7,
            ),
            Container(
              width: 210,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff223F81),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45))),
                  onPressed: () {
                    Get.to(HomeScreen());
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  )),
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
