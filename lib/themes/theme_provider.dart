import 'package:flutter/material.dart';
import 'package:waytodeen2/themes/dark_mode.dart';
import 'package:waytodeen2/themes/light_mode.dart';
class ThemeProvider extends ChangeNotifier{
  //initially light mode
  ThemeData _themeData =lightMode;

  //get theme
  ThemeData get themedata =>_themeData;
  //is dark mode
  bool get isDarkMode=> _themeData ==darkMode;

  set themedata (ThemeData themeData){
    _themeData =themeData;
    //update ui

    notifyListeners();
  }
  //toggle Theme

  void toggleTheme(){
    if(_themeData==lightMode){
      themedata =darkMode;
    }
    else{
      themedata =lightMode;
    }
  }


}