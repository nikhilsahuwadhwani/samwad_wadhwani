import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/media_model.dart';

class DetailedMediaScreen extends StatelessWidget {
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
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(35),
                      bottomLeft: Radius.circular(35.0)),
                  color: Colors.yellow,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/media_images/media_image.jpg'),
                  )),
              child: Container(
                  alignment: Alignment.topLeft,
                  height: 300,
                  width: double.maxFinite,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                     Navigator.pop(context);
                    },
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      "${_list[0].title}",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff223F81)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.bookmark, size: 20, color: Color(0xff223F81)),
                Icon(Icons.share, size: 20, color: Color(0xff223F81))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Lörem ipsum vande kande reponat. Bengen ten mikrosanas äktig ifall antide anade.            Tes hyponisk pseudoligt, fastän tetunar plus betepresam. Ojymilig spespesade fast ora i preravis, att temyl. Fad vijyde halvpudel göra. Vins jyde de kåteder. "
                  "Lörem ipsum vande kande reponat. Bengen ten mikrosanas äktig ifall antide anade.            Tes hyponisk pseudoligt, fastän tetunar plus betepresam. Ojymilig spespesade fast ora i preravis, att temyl. Fad vijyde halvpudel göra. Vins jyde de kåteder. "
                  "Lörem ipsum vande kande reponat. Bengen ten mikrosanas äktig ifall antide anade.            Tes hyponisk pseudoligt, fastän tetunar plus betepresam. Ojymilig spespesade fast ora i preravis, att temyl. Fad vijyde halvpudel göra. Vins jyde de kåteder. "
                  "Lörem ipsum vande kande reponat. Bengen ten mikrosanas äktig ifall antide anade.            Tes hyponisk pseudoligt, fastän tetunar plus betepresam. Ojymilig spespesade fast ora i preravis, att temyl. Fad vijyde halvpudel göra. Vins jyde de kåteder. "
                  "Lörem ipsum vande kande reponat. Bengen ten mikrosanas äktig ifall antide anade.            Tes hyponisk pseudoligt, fastän tetunar plus betepresam. Ojymilig spespesade fast ora i preravis, att temyl. Fad vijyde halvpudel göra. Vins jyde de kåteder. "
                  "Lörem ipsum vande kande reponat. Bengen ten mikrosanas äktig ifall antide anade.            Tes hyponisk pseudoligt, fastän tetunar plus betepresam. Ojymilig spespesade fast ora i preravis, att temyl. Fad vijyde halvpudel göra. Vins jyde de kåteder. ",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff223F81))),
            )
          ],
        ),
      ),
    );
  }
}
