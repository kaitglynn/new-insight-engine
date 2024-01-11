```dart
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }
}

class ThemeSettings {
  static final lightTheme = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
  );
}

void updateThemeSettings(bool isDarkMode, ThemeChanger themeChanger) {
  themeChanger.setTheme(isDarkMode ? ThemeSettings.darkTheme : ThemeSettings.lightTheme);
}
```