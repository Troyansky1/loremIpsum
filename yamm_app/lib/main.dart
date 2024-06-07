import 'package:flutter/material.dart';
import 'package:yamm_app/pages/home_page.dart';
import 'package:yamm_app/pages/load_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yamm_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 253, 252),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(0, 150, 114, 89),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          // ···
          titleLarge: GoogleFonts.heebo(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          titleMedium: GoogleFonts.heebo(
            fontSize: 20,
          ),
          titleSmall: GoogleFonts.heebo(
            fontSize: 15,
          ),

          bodyMedium: GoogleFonts.heebo(fontSize: 18),
          displaySmall: GoogleFonts.heebo(),
          labelLarge: GoogleFonts.heebo(fontSize: 17),
          labelMedium: GoogleFonts.heebo(fontSize: 15),
          labelSmall: GoogleFonts.heebo(fontSize: 20),
          bodySmall: GoogleFonts.heebo(fontSize: 15),
        ),
      ),
      home: login_page(),
    );
  }
}
