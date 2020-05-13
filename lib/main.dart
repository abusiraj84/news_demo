import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_demo/blocks/theme.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(isDarkMode: false),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
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
      theme: theme.getTheme(),
      home: HomeScreen(),
    );
  }
}

//  fontFamily: "SST-Arabic-Medium",
