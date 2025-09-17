import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/presentation/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'Amit Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff282C33),
        textTheme: GoogleFonts.firaCodeTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.firaCode(textStyle: textTheme.bodyMedium),
        ),
      ),
      home: HomePage(),
    );
  }
}
