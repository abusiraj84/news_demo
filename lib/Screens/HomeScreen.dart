import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../blocks/theme.dart';
import 'package:provider/provider.dart';

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
    final _themeChanger = Provider.of<ThemeProvider>(context, listen: false);

    FlutterStatusbarcolor.setStatusBarColor(
        _themeChanger.getTheme() == _themeChanger.light
            ? Colors.white
            : _themeChanger.bgDark);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(
        _themeChanger.getTheme() == _themeChanger.light ? false : true);

    return Scaffold(
      backgroundColor: _themeChanger.getTheme() == _themeChanger.light
          ? Color(0xffCAC9D0)
          : _themeChanger.bgDark,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _themeChanger.swapTheme();
        },
        child: Icon(_themeChanger.getTheme() == _themeChanger.light
            ? FontAwesomeIcons.sun
            : FontAwesomeIcons.moon),
        backgroundColor: _themeChanger.getTheme() == _themeChanger.light
            ? Colors.black
            : _themeChanger.blue,
        foregroundColor: _themeChanger.getTheme() == _themeChanger.light
            ? _themeChanger.blue
            : Colors.white,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //TopBar
              // AnimatedContainer(
              //   duration: Duration(milliseconds: 300),
              //   height: 40,
              //   child: Row(
              //     children: <Widget>[],
              //   ),
              // ),
              Feature(
                catTitle: 'علوم',
                featureTitle:
                    'صور تدمي القلوب .. من رحم الحرب وأنقاضها بطل إفطار سوري!',
                img:
                    'https://www.aljazeera.net/File/GetImageCustom/ba8e7caf-bea8-47fe-8413-6f5f792214b2/1026/580',
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
