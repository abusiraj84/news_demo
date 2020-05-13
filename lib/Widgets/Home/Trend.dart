import 'package:flutter/material.dart';
import 'package:news_demo/blocks/theme.dart';
import 'package:provider/provider.dart';

class Trend extends StatefulWidget {
  Trend({Key key}) : super(key: key);

  @override
  _TrendState createState() => _TrendState();
}

class _TrendState extends State<Trend> {
  @override
  Widget build(BuildContext context) {
    final _themeChanger = Provider.of<ThemeProvider>(context, listen: false);

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20, bottom: 20),
          child: Row(
            children: <Widget>[
              //Border
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 20,
                width: 4,
                margin: EdgeInsets.only(left: 10),
                color: _themeChanger.getTheme() == _themeChanger.light
                    ? _themeChanger.blueDark
                    : Colors.white,
              ),
              //Cat Title
              Text(
                'المتصدر',
                style: TextStyle(
                    color: _themeChanger.getTheme() == _themeChanger.light
                        ? _themeChanger.blueDark
                        : Colors.white),
              )
            ],
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.all(0),
          height: 150,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: 200,
                margin: EdgeInsets.only(right: 20, left: 5),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: _themeChanger.getTheme() == _themeChanger.light
                      ? _themeChanger.cardDark
                      : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: _themeChanger.blueDark,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'مسودة دستور الجزائر.. أبرز التعديلات وردود الفعل',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color:
                                _themeChanger.getTheme() == _themeChanger.light
                                    ? Colors.white
                                    : Colors.black),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
