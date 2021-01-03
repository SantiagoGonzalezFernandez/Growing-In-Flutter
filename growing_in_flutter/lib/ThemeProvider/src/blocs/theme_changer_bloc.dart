//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class ThemeChangerBloc with ChangeNotifier {
  
  ThemeData _themeData;

  ThemeChangerBloc(
    this._themeData
  );

  getTheme() => _themeData;

  setTheme(ThemeData theme) {
    this._themeData = theme;
    notifyListeners();
  }

}