import 'package:Myshop/screens/home..dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Color(0xff21B4A6),
        canvasColor: Color(0xffF8F8F8),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: GoogleFonts.sourceSansPro(
            fontSize: 22,
            color: Color(0xff686868),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
