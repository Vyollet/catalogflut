import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/LoginPage.dart';
import 'pages/HomePage.dart';

import 'Rout/Routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => LogPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.logRoute: (context) => LogPage(),
      },
    );
  }
}
