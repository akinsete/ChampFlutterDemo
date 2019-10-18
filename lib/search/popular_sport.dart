import 'package:flutter/material.dart';

class PopularSport extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PopularSportState();
  }
}

class PopularSportState extends State<PopularSport> {

  List<String> images = [
    'http://www.oxfordstudent.com/wp-content/uploads/2018/02/123114patriotstf04-559x600.jpg',
    'http://www.topsports.ch/WebRoot/SwissPost/Shops/SHOP-KMU00123/5602/BCF6/7DA5/0C56/1B33/0A0C/05E7/A01B/930.jpg',
    'https://jousports.com/media/catalog/product/cache/14/image/9df78eab33525d08d6e5fb8d27136e95/H/E/HE-1020.jpg',
    'http://www.mulberryacademyshoreditch.org/wp-content/uploads/2017/05/TK_1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Populaire sportens",
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .subhead
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, index) {
                return buildItem(images[index]);
              },
              itemCount: images.length,
            ),
          )
        ],
      ),
    );
  }

  Widget buildItem(String image) {
    return Card(
      elevation: 10,
      child: Image.network(image, height: 120, width: 120, fit: BoxFit.cover),
    );
  }
}
