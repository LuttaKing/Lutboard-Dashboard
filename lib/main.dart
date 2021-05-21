import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifee_dashboard/constants.dart';
import 'package:ifee_dashboard/home/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Years & Years',
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
