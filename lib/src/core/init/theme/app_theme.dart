import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../gen/colors.gen.dart';

class AppTheme {
  static AppTheme? _instance;
  static AppTheme get instance {
    _instance ??= AppTheme._init();
    return _instance!;
  }

  AppTheme._init();

  ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: ColorName.black87,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorName.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: ColorName.white, size: 3.h),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 14.sp),
          toolbarHeight: 7.h,
        ),
        textTheme: TextTheme(
          bodySmall: TextStyle(color: ColorName.white, fontSize: 12.sp),
          bodyMedium: TextStyle(color: ColorName.white, fontSize: 14.sp),
          bodyLarge: TextStyle(color: ColorName.white, fontSize: 16.sp),
        ),
        iconTheme: const IconThemeData(color: ColorName.white),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: ColorName.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          border: UnderlineInputBorder(
            borderSide: const BorderSide(color: ColorName.black),
            borderRadius: BorderRadius.circular(10.0),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: ColorName.black),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: ColorName.black),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: ColorName.gray),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        cardColor: Colors.blueGrey.shade900,
      );
}
