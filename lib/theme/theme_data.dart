import 'dart:ui';

import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      unselectedWidgetColor: isDarkTheme ? Colors.grey : Colors.black,
      textTheme:
      TextTheme(
        headline1: isDarkTheme ? TextStyle(color: Colors.white) : TextStyle(color: Colors.black),
        headline2: isDarkTheme ? TextStyle(color: Colors.white) : TextStyle(color: Colors.black),
        bodyText2: isDarkTheme ? TextStyle(color: Colors.white) : TextStyle(color: Colors.black),
        subtitle1: isDarkTheme ? TextStyle(color: Colors.white) : TextStyle(color: Colors.black),
      ),

      scaffoldBackgroundColor: isDarkTheme ? Colors.grey.shade600 :Colors.white,
      primarySwatch: Colors.green,
      primaryColor: isDarkTheme ? Colors.black : Colors.grey.shade300,
      accentColor: Colors.deepPurple,
      backgroundColor: isDarkTheme ? Colors.black : Colors.white,
      indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
      buttonColor: isDarkTheme ? Color(0xff3B3B3B) : Color(0xffF1F5FB),
      hintColor: isDarkTheme ? Colors.grey.shade300 : Colors.grey.shade800,
      highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),
      focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      textSelectionColor: isDarkTheme ? Colors.black : Colors.black,
      cardColor: isDarkTheme ? Colors.black : Colors.white,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
    );
  }
}


// textTheme:
// TextTheme(
// headline1: TextStyle(color: Colors.black),
// headline2: TextStyle(color: Colors.black),
// bodyText2: TextStyle(color: Colors.black),
// subtitle1: TextStyle(color: Colors.black),
// ),