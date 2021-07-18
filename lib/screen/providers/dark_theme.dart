import 'package:flutter/material.dart';
import 'package:pec_yellow_pages/screen/providers/saver.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemeSaver darkThemeSaver = DarkThemeSaver();
  bool _darkTheme = false; // by default it is white
  bool get darkTheme => _darkTheme; // setting up getters

  set darkTheme(bool value) {
    //setters
    _darkTheme = value;
    darkThemeSaver.setDarkTheme(value);
    notifyListeners(); // note the changes made.
  }
}
