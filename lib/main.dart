import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio/globals/colors.dart';
import 'package:portafolio/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Enzo Saavedra Torres",
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: Colors.black),
      ).copyWith(scaffoldBackgroundColor: backgroundColorApp),
      home: const HomePage(),
    );
  }
}
