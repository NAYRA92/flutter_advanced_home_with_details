import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahrat_elwadi/homepage.dart';

void main() {
  runApp(const MyApp());
}
String title = "project name";
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white,
        toolbarTextStyle: GoogleFonts.tajawal(
          color: Colors.black,
        ),)
      ),
      home: const HomePage(),
    );
  }
}
