import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widgets/Home/Feature.dart';
import '../Widgets/Home/FeatureList.dart';
import '../Widgets/Home/Trend.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(FontAwesomeIcons.moon),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //TopBar
              Container(
                height: 40,
                child: Row(
                  children: <Widget>[],
                ),
              ),
              Feature(
                catTitle: 'علوم',
                featureTitle:
                    'صور تدمي القلوب .. من رحم الحرب وأنقاضها بطل إفطار سوري!',
                img:
                    'https://www.aljazeera.net/File/GetImageCustom/5e47bd6f-1f3e-4041-aac3-87da5b293e3f/1026/580',
              ),
              FeatureList(),
              Trend()
            ],
          ),
        ),
      ),
    );
  }
}
