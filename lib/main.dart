import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter_localizations/flutter_localizations.dart';

import 'Screens/HomeScreen.dart';

double screenWidth;
double screenHeight;

void main() {
  screenWidth = ui.window.physicalSize.width / ui.window.devicePixelRatio;
  screenHeight = ui.window.physicalSize.height / ui.window.devicePixelRatio;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar'), // arabic
      ],
      theme: ThemeData(
        fontFamily: "SST-Arabic-Medium",
      ),
      home: HomeScreen(),
    );
  }
}
