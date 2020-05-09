import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeatureList extends StatefulWidget {
  FeatureList({Key key}) : super(key: key);

  @override
  _FeatureListState createState() => _FeatureListState();
}

class _FeatureListState extends State<FeatureList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 570,
      child: ListView.builder(
        padding: EdgeInsets.all(20),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 122,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'مقال بواشنطن بوست: مصر وجدت علاجا لكورونا.. وحكايات غريبة من ماكينة الدعاية في القاهرة',
                              style: TextStyle(fontSize: 13),
                            ),
                            // Meta
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.share,
                                        color: Colors.grey[500],
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.bookmark,
                                        color: Colors.grey[500],
                                        size: 18,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  color: Colors.orange[800],
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: Text(
                                    'أخبار',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Image.network(
                            'https://www.aljazeera.net/File/GetImageCustom/4a8493f8-99ee-4808-8d77-849adac4f60c/1026/580',
                            width: 130,
                            height: 122,
                            fit: BoxFit.cover),
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
