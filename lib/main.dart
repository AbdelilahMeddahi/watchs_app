import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchs_app/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.aBeeZeeTextTheme(),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: HomeScreen(),
    );
  }
}