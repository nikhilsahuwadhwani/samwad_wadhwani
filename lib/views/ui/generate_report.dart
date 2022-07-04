import 'package:flutter/material.dart';

import '../../models/media_model.dart';

class GenerateReport extends StatelessWidget {
  String title;
  GenerateReport({required this.title});
  List<MediaModel> _list = [
    MediaModel(
        title:
            'Climate change might affect India’s future renewablenergy production',
        date: 'June 10, 2022',
        time: '06:30 PM'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xff223F81)),
          backgroundColor: Color(0xffF5F5F5),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text(
                  title!,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.analytics, color: Color(0xff223F81)),
                      Icon(Icons.notifications, color: Color(0xff223F81)),
                    ],
                  ),
                ),
              ),
            ],
          )),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(35),
                                            color: Colors.yellow,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  'assets/media_images/media_image.jpg'),
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 7,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${_list[0].title}",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff223F81)),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "${_list[0].date} | ${_list[0].time}",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            Color(0xff223F81)),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.bookmark,
                                                          size: 20,
                                                          color: Color(
                                                              0xff223F81)),
                                                      Icon(Icons.share,
                                                          size: 20,
                                                          color:
                                                              Color(0xff223F81))
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            flex: 8,
                          ),
                          Expanded(
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.circle)),
                            flex: 1,
                          )
                        ],
                      ),
                    );
                  }),
            ),
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
                  "Generate Report",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                )),
          ),
        ],
      ),
    );
  }
}
