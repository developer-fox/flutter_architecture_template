
import 'package:flutter/material.dart';

//? AppThemeLight.instance.<method_name> 
class AppThemeLight{

  static AppThemeLight? _instance =  AppThemeLight._init();
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  // uygulamada kullanilacak renkler bu sekilde belirtilmistirç
  //? AppThemeLight.instance.theme.ColorScheme.<attribute_name>
  ThemeData get theme => ThemeData(
    canvasColor: Colors.red,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.blue,
      onPrimary: Colors.white, 
      secondary: Colors.pink, 
      onSecondary: Colors.yellow,
      error: Colors.red, 
      onError: Colors.black, 
      background: Colors.grey, 
      onBackground: Colors.black, 
      surface: Colors.lightGreen,
      onSurface: Colors.orange)
  );



}

