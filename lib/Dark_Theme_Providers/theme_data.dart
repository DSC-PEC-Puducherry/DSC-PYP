import 'package:flutter/material.dart';

//Colors used in App ===========================================================

const ksecondaryColor = Colors.white;

//sidePage
const sideApp = Color.fromRGBO(255, 244, 141, 1);
const AboutCardcolor = Color.fromRGBO(196, 196, 196, 1);

//details
const detailpgAppbar = Color.fromRGBO(255, 244, 141, 1);
const detailIconcolor = Color.fromRGBO(255, 215, 1, 1);

//appbar
const appbarIconColor = Color.fromRGBO(189, 147, 83, 0.89);
const appBarcolor = Color.fromRGBO(255, 244, 141, 1);

//==============================================================================

// Color Modifications For Dark Mode ===========================================
class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      //primarySwatch: Colors.red,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      scaffoldBackgroundColor: isDarkTheme ? Colors.black : Colors.white,
      primaryColor: isDarkTheme ? Colors.black : Colors.white,
      backgroundColor: isDarkTheme ? Colors.black : Color(0xffF1F5FB),
      indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
      buttonColor: isDarkTheme ? Color(0xff3B3B3B) : Color(0xffF1F5FB),
      hintColor: isDarkTheme ? Color(0xff280C0B) : Colors.black,
      highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),
      focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      textSelectionColor: isDarkTheme ? Colors.white : Colors.black,
      cardColor: isDarkTheme ? Color(0xFF151515) : Colors.white,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
    );
  }
}
