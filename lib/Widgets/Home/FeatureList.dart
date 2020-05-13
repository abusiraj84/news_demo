import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../blocks/theme.dart';
import 'package:provider/provider.dart';

class FeatureList extends StatefulWidget {
  FeatureList({Key key}) : super(key: key);

  @override
  _FeatureListState createState() => _FeatureListState();
}

class _FeatureListState extends State<FeatureList> {
  @override
  Widget build(BuildContext context) {
    final _themeChanger = Provider.of<ThemeProvider>(context, listen: false);

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
      height: 585,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
            margin: EdgeInsets.only(bottom: 7),
            padding: EdgeInsets.only(right: 20),
            height: 119,
            color: _themeChanger.getTheme() == _themeChanger.light
                ? Colors.white
                : _themeChanger.cardDark,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              newList[index]['postTitle'],
                              style: TextStyle(
                                  fontSize: 14,
                                  color: _themeChanger.getTheme() ==
                                          _themeChanger.light
                                      ? Colors.black
                                      : Colors.white),
                            ),
                            // Meta
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                AnimatedContainer(
                                  alignment: Alignment.bottomCenter,
                                  duration: Duration(milliseconds: 300),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.share,
                                        color: _themeChanger.textGray,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.bookmark,
                                        color: _themeChanger.textGray,
                                        size: 18,
                                      )
                                    ],
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                  margin: EdgeInsets.only(top: 10),
                                  color: _themeChanger.getTheme() ==
                                          _themeChanger.light
                                      ? _themeChanger.blueLight
                                      : _themeChanger.blueDark,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: Text(
                                    newList[index]['cat'],
                                    style: TextStyle(
                                        color: _themeChanger.getTheme() ==
                                                _themeChanger.light
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 10),
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
                        Image.network(newList[index]['img'],
                            width: 130, height: 119, fit: BoxFit.cover),
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

  List newList = [
    {
      'cat': 'أخبار',
      'postTitle':
          'حديث عن إمكانية السيادة على الغور ومستوطنات الضفة.. بومبيو يزور إسرائيل الأسبوع المقبل',
      'img':
          'https://www.aljazeera.net/File/GetImageCustom/1a124b6f-7426-4f46-b179-108be6a678db/1026/580'
    },
    {
      'cat': 'علوم',
      'postTitle':
          'فيلسوف أوروبي عن كورونا: إذا عزلت الدول نفسها فستبدأ الحروب ولن تعود الحياة الطبيعية أبدا',
      'img':
          'https://www.aljazeera.net/File/GetImageCustom/60b78704-9f39-4322-b501-09688f1d574f/536/302'
    },
    {
      'cat': 'رياضة',
      'postTitle':
          'عقار صيني لعلاج كورونا.. ونتائج إيجابية لمزيج عقاقير تستخدم لعلاج الإيدز والتهاب الكبد',
      'img':
          'https://sport.aljazeera.net/File/GetImageCustom/931450e1-1095-4a1b-a8ba-bfa77aea870f'
    },
    {
      'cat': 'اقتصاد',
      'postTitle':
          'غضب بمواقع التواصل لسحل مغترب مصري في السعودية وأسرته تناشد للإفراج عنه',
      'img':
          'https://sport.aljazeera.net/File/GetImageCustom/455D008D-4718-4F96-88C8-39B0C1238B18/1086/612'
    },
  ];
}
