import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  Color bgDark = Color(0xff13191D);
  Color cardDark = Color(0xff14212B);
  Color textGray = Color(0xff96A1B2);
  Color blueDark = Color(0xff206A9B);
  Color blueLight = Color(0xff7BC7F5);
  Color blue = Color(0xff239FF1);

  ThemeData _themeData;
  ThemeData light = ThemeData.light().copyWith(
    primaryColor: Color(0xff239FF1),
    textTheme:
        ThemeData.dark().textTheme.apply(fontFamily: "SST-Arabic-Medium"),
  );
  ThemeData dark = ThemeData.dark().copyWith(
    primaryColor: Color(0xff13191D),
    textTheme:
        ThemeData.dark().textTheme.apply(fontFamily: "SST-Arabic-Medium"),
  );

  ThemeProvider({bool isDarkMode}) {
    _themeData = isDarkMode ? dark : light;
  }

  getTheme() => _themeData;
  setTheme(ThemeData theme) {
    _themeData = theme;

    notifyListeners();
  }

  void swapTheme() {
    _themeData = _themeData == dark ? light : dark;
    notifyListeners();
  }
}
