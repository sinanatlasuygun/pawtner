import 'package:flutter/material.dart';
import 'package:pawtner/theme/dark.dart';
import 'package:pawtner/theme/light.dart';
import 'package:pawtner/theme/template.dart';

class ThemeGeneral extends ChangeNotifier {
  /// Variables
  ThemeTemplate? _template;
  Brightness? _brightness;
  ThemeMode? _mode;
  ThemeData? _data;
  ThemeData? _darkdata;

  /// GET Functions
  ThemeTemplate get template => _template ?? ThemeLight();
  Brightness get brightness => _brightness ?? Brightness.light;
  ThemeMode get thememode => _mode ?? ThemeMode.light;
  ThemeData get lightthemedata => _data ?? ThemeLight().themedata;
  ThemeData get darkthemedata => _darkdata ?? ThemeDark().themedata;

  /// SET Functions
  set setBrightness(Brightness newbrightness) {
    _brightness = newbrightness;
    notifyListeners();
  }

  set setThemeMode(ThemeMode newthememode) {
    _mode = newthememode;
    notifyListeners();
  }

  set setLightThemeData(ThemeData newtheme) {
    _data = newtheme;
    notifyListeners();
  }

  set setDarkThemeData(ThemeData newdarktheme) {
    _darkdata = newdarktheme;
    notifyListeners();
  }

  set setTemplate(ThemeTemplate newtemplate) {
    _template = newtemplate;
    notifyListeners();
  }

  /// Functions
  void systemTheme() {
    _mode = ThemeMode.system;
    notifyListeners();
  }

  void changeMode(bool mode) {
    _mode = mode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
