import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../main.dart';

class Feature extends StatelessWidget {
  const Feature({Key key, this.catTitle, this.featureTitle, this.img})
      : super(key: key);

  final String catTitle;
  final String featureTitle;
  final String img;

  @override
  Widget build(BuildContext context) {
// Image background
    return Container(
      height: 350,
      color: Colors.grey.shade300,
      child: Stack(
        children: <Widget>[
          Container(
            height: screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  img,
                ),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.6)
                  ])),
            ),
          ),
          content(),
        ],
      ),
    );
  }
  // Content Wrapper

  content() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Category Title and Border
          Row(
            children: <Widget>[
              //Border
              Container(
                height: 20,
                width: 4,
                margin: EdgeInsets.only(left: 10),
                color: Colors.white,
              ),
              //Cat Title
              Text(
                catTitle,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),

// Content Title //
          Text(
            featureTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          // Meta
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.share,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  FontAwesomeIcons.bookmark,
                  color: Colors.white,
                  size: 18,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
