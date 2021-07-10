import 'package:flutter/material.dart';
import 'package:flutter_sneaker_app/src/HomePage.dart';
import 'package:flutter_sneaker_app/src/detalsPage.dart';
import 'package:flutter_sneaker_app/src/getstartSrc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStart(),
    );
  }
}
