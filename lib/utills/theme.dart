import 'package:beauty_points/utills/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Light Theme
  static ThemeData get lightTheme {
    return ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.kPrimaryColor,
        brightness: Brightness.light,
      ),
    ).copyWith(
      brightness: Brightness.light,

      // primaryColor: AppColors.kPrimaryColor,
      scaffoldBackgroundColor: AppColors.kScaffoldColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        titleTextStyle: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: AppColors.textPrimaryColor,
            fontSize: 16.sp,
          ),
        ),
        elevation: 0,
        // centerTitle: true,
      ),
      textTheme: GoogleFonts.montserratTextTheme(),
      // Text Selection Theme for cursor color
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.kPrimaryColor, // Cursor color
      ),

      iconTheme: const IconThemeData(color: Colors.black54),
      checkboxTheme: CheckboxThemeData(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        checkColor: WidgetStatePropertyAll(Colors.white),
        fillColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.kPrimaryColor;
          }
          return null;
        }),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 13.h),
          textStyle: GoogleFonts.montserrat(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),

          foregroundColor: Colors.white,
          backgroundColor: AppColors.kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48.r),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        filled: true,
        fillColor: Colors.white,
        errorStyle: TextStyle(fontSize: 11.sp, overflow: TextOverflow.visible),
        errorMaxLines: 2,

        hintStyle: TextStyle(fontSize: 14.sp, color: AppColors.greyColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(38.r),
          borderSide: BorderSide(color: AppColors.strokeColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(38.r),
          borderSide: BorderSide(color: AppColors.strokeColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(38.r),
          borderSide: BorderSide(color: AppColors.strokeColor),
        ),
      ),
    );
  }

  // Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      primaryColor: Colors.blue[400],
      scaffoldBackgroundColor: const Color(0xFF121212),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF1E1E1E),
        foregroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
        bodyMedium: TextStyle(color: Colors.white70, fontSize: 14),
      ),
      iconTheme: const IconThemeData(color: Colors.white70),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[400],
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
