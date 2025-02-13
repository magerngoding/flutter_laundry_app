//1 ignore_for_file: prefer_const_constructors

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_laundry_app/config/app_colors.dart';
import 'package:flutter_laundry_app/pages/auth/register_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    // Hanya di warp 1x
    ProviderScope(
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          secondary: Colors.greenAccent[400]!,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.primary),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            ),
            textStyle: WidgetStatePropertyAll(
              TextStyle(fontSize: 15.0),
            ),
          ),
        ),
      ),
      home: RegisterPage(),
    );
  }
}
