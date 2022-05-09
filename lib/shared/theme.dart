// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meshkah_screens/shared/size.dart';

import 'global_config.dart';

const _colorSchemeLight = ColorScheme(
    primary: Colors.teal,
    primaryVariant: Colors.teal,
    secondary: Colors.white,
    secondaryVariant: Colors.white,
    surface: Colors.white,
    background: Colors.white,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.grey,
    onSurface: Colors.white,
    onBackground: Colors.teal,
    onError: Colors.teal,
    brightness: Brightness.light);

class MyTheme {
  ThemeData getTheme() {
    return ThemeData(
      scaffoldBackgroundColor: _colorSchemeLight.background,
      backgroundColor: _colorSchemeLight.background,
      colorScheme: _colorSchemeLight,
      appBarTheme: AppBarTheme(
        titleSpacing: 0.0,
        titleTextStyle: getTextTheme()
            .headline2!
            .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
        elevation: 1.0,
        shadowColor: Colors.transparent,
        color: _colorSchemeLight.onBackground,
        foregroundColor: _colorSchemeLight.onBackground,
        centerTitle: true,
        iconTheme: IconThemeData(color: _colorSchemeLight.onPrimary),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _colorSchemeLight.primary,
        foregroundColor: Colors.white
      ),
      inputDecorationTheme: _inputDecorationTheme(),
      textButtonTheme: transparentTextButton(),
      iconTheme: IconThemeData(
        color: Colors.teal,
        size: defaultIconSize,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: _colorSchemeLight.primary,
        textColor: Colors.black,
        contentPadding: EdgeInsets.zero
      ),
      elevatedButtonTheme: elevatedButtonThemeData(),
      primaryColor: _colorSchemeLight.primary,
      fontFamily: enFont,
    );
  }

  static TextTheme getTextTheme() {
    return TextTheme(
      headline6: TextStyle(
        color: _colorSchemeLight.secondaryVariant,
        fontSize: 14.sp,
        fontFamily: enFont,
        height: 1.2.h,
      ),
      headline5: TextStyle(
        color: _colorSchemeLight.secondaryVariant,
        fontSize: 16.sp,
        fontFamily: enFont,
        height: 1.2.h,
      ),
      headline4: TextStyle(
        color: _colorSchemeLight.secondaryVariant,
        fontSize: 18.sp,
        fontFamily: enFont,
        height: 1.2.h,
      ),
      headline3: TextStyle(
        color: _colorSchemeLight.secondaryVariant,
        fontSize: 20.sp,
        fontFamily: enFont,
        height: 1.2.h,
      ),
      headline2: TextStyle(
        color: _colorSchemeLight.secondaryVariant,
        fontSize: 22.sp,
        fontFamily: enFont,
        height: 1.2.h,
      ),
      headline1: TextStyle(
        color: _colorSchemeLight.secondaryVariant,
        fontSize: 24.sp,
        fontFamily: enFont,
        height: 1.2.h,
      ),
      subtitle1: TextStyle(
          color: _colorSchemeLight.secondaryVariant,
          fontSize: 12.sp,
          height: 1.2.h,
          fontFamily: enFont,
          fontWeight: FontWeight.w500),
      bodyText1: TextStyle(
        color: _colorSchemeLight.secondaryVariant,
        fontSize: 16.sp,
        height: 1.2.h,
        fontFamily: enFont,
      ),
      bodyText2: TextStyle(
        color: _colorSchemeLight.secondaryVariant,
        fontSize: 16.sp,
        height: 1.2.h,
        fontFamily: enFont,
      ),
      caption: TextStyle(
        color: _colorSchemeLight.secondaryVariant,
        fontSize: 16.sp,
        height: 1.2.h,
        fontFamily: enFont,
      ),
      overline: TextStyle(
        color: _colorSchemeLight.secondaryVariant,
        fontSize: 16.sp,
        height: 1.2.h,
        fontFamily: enFont,
      ),
      subtitle2: TextStyle(
        color: _colorSchemeLight.secondaryVariant,
        fontSize: 14.sp,
        fontFamily: enFont,
        height: 1.5.h,
      ),
      button: TextStyle(
          color: _colorSchemeLight.background,
          fontSize: 13.sp,
          height: 1.2.h,
          fontWeight: FontWeight.bold),
    ).apply(
      decorationColor: _colorSchemeLight.onSurface,
      bodyColor: _colorSchemeLight.onSurface,
      displayColor: _colorSchemeLight.onSurface,
    );
  }
}

InputDecorationTheme _inputDecorationTheme() => InputDecorationTheme(
//  contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 0.h),
      floatingLabelStyle: MyTheme.getTextTheme().subtitle2,
      labelStyle: MyTheme.getTextTheme().subtitle2,
      hintStyle: MyTheme.getTextTheme().subtitle2!.copyWith(color: Colors.grey),
      errorStyle: MyTheme.getTextTheme()
          .subtitle2!
          .copyWith(height: 1.2.h, fontSize: 12.sp, color: Colors.red[300]),

      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _colorSchemeLight.primary),
        borderRadius: BorderRadius.all(Radius.circular(circleRadius)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
      ),
//  isDense: false,
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _colorSchemeLight.error),
        borderRadius: BorderRadius.all(Radius.circular(circleRadius)),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey
            // color: _colorSchemeLight
            //     .onBackground
            ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _colorSchemeLight.error),
        borderRadius: BorderRadius.all(Radius.circular(circleRadius)),
      ),
    );

TextButtonThemeData transparentTextButton() {
  final double _maxButtonHeight = 10.0.h;
  final double _maxButtonWidth = 180.0.w;

  return TextButtonThemeData(
      style: TextButton.styleFrom(
    backgroundColor: Colors.transparent,
    primary: _colorSchemeLight.onPrimary,
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
    minimumSize: Size(0, _maxButtonHeight),
    textStyle: MyTheme.getTextTheme().button,
    maximumSize: Size(_maxButtonWidth, _maxButtonHeight),
    elevation: 0,
  ));
}

ElevatedButtonThemeData elevatedButtonThemeData() {
  final double _maxButtonHeight = 40.0.h;
  final double _maxButtonWidth = 300.0.w;
  return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle:
              TextStyle(fontFamily: enFont, fontSize: 14.sp, height: 1.5 , fontWeight: FontWeight.w600),
          primary: _colorSchemeLight.primary,
          onPrimary: _colorSchemeLight.onPrimary,
          elevation: 0,
          shadowColor: Colors.white30,
          minimumSize: Size(200.w, _maxButtonHeight),
          maximumSize: Size(_maxButtonWidth, _maxButtonHeight),
// padding: EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(circleRadius)),
          )));
}
