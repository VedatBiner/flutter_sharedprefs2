import 'package:flutter/material.dart';

ThemeData green = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green.shade50);

ThemeData red = ThemeData(
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.red.shade50);

class ThemeColorData with ChangeNotifier{

  bool _isGreen = true;

  //getter
  bool get isGreen => _isGreen;

  //getter
  ThemeData get themeColor {
    return _isGreen ? green : red;
  }

  void toggleTheme(){
    _isGreen= !_isGreen;
    notifyListeners();
  }
}
