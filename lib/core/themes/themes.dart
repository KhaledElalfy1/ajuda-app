import 'package:ajuda/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    textTheme: GoogleFonts.poppinsTextTheme(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: const WidgetStatePropertyAll(Size(90, 56)),
        backgroundColor: const WidgetStatePropertyAll(AppColors.primaryColor),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.fillColor,
      hintStyle:const TextStyle(
        color: Color(0xff818898),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      filled: true,
      border: borderDecoration(),
      enabledBorder: borderDecoration(),
      focusedBorder: borderDecoration(),
      errorBorder: borderDecoration(color: Colors.red),
    ),
  );
}

OutlineInputBorder borderDecoration({Color color = AppColors.borderColor}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: BorderSide(
      color: color,
    ),
  );
}
