import 'package:Myshop/screens/products_overwiew.dart';
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
        accentColor: Color(0xff462D1A),
        canvasColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: GoogleFonts.roboto(
            fontSize: 28,
            color: Color(0xff462D1A),
            fontWeight: FontWeight.w600,
          ),
          bodyText1: GoogleFonts.roboto(
            fontSize: 18,
            color: Color(0xffD5AB9C),
          ),
        ),
      ),
      home: ProductsOverwiew(),
    );
  }
}
