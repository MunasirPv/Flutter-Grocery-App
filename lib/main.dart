import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/general/colors.dart' as color;
import 'package:grocery_app/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: color.primary,
        fontFamily: GoogleFonts.nunito().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
