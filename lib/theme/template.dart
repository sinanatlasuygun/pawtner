import 'package:flutter/material.dart';

class ThemeTemplate {
  final String _themename;
  final Brightness _brightness;
  final ThemeMode _thememode;
  
  final Color _surfaceTint;
  final Color _primary;
  final Color _primaryvariant;
  final Color _onprimary;
  final Color _secondary;
  final Color _secondaryvariant;
  final Color _onsecondary;
  final Color _surface;
  final Color _surfacevariant;
  final Color _onsurface;
  final Color _error;
  final Color _errorvariant;
  final Color _onerror;

  ThemeTemplate({
    required String themename,
    required String surfacetint,
    required Brightness brightness,
    required ThemeMode thememode,
    required String primary,
    required String primaryvariant,
    required String onprimary,
    required String secondary,
    required String secondaryvariant,
    required String onsecondary,
    required String surface,
    required String surfacevariant,
    required String onsurface,
    required String error,
    required String errorvariant,
    required String onerror,
  }) : _themename = themename,
       _surfaceTint = Color(int.parse('0xff$surfacetint')),
       _brightness = brightness,
       _thememode = thememode,
       _primary = Color(int.parse('0xff$primary')),
       _primaryvariant = Color(int.parse('0xff$primaryvariant')),
       _onprimary = Color(int.parse('0xff$onprimary')),
       _secondary = Color(int.parse('0xff$secondary')),
       _secondaryvariant = Color(int.parse('0xff$secondaryvariant')),
       _onsecondary = Color(int.parse('0xff$onsecondary')),
       _surface = Color(int.parse('0xff$surface')),
       _surfacevariant = Color(int.parse('0xff$surfacevariant')),
       _onsurface = Color(int.parse('0xff$onsurface')),
       _error = Color(int.parse('0xff$error')),
       _errorvariant = Color(int.parse('0xff$errorvariant')),
       _onerror = Color(int.parse('0xff$onerror'));

  /// Create ThemeData
  ThemeData get _theme => ThemeData(
    colorScheme: ColorScheme(
      surfaceTint: _surfaceTint,
      brightness: _brightness,
      primary: _primary,
      primaryContainer: _primaryvariant,
      onPrimary: _onprimary,
      secondary: _secondary,
      secondaryContainer: _secondaryvariant,
      onSecondary: _onsecondary,
      error: _error,
      errorContainer: _errorvariant,
      onError: _onerror,
      surface: _surface,
      surfaceContainer: _surfacevariant,
      onSurface: _onsurface,

    ),
  );

  /// GET Functions
  String get themename => _themename;
  Color get surfacetint => _surfaceTint;
  Brightness get brightness => _brightness;
  ThemeMode get thememode => _thememode;
  ThemeData get themedata => _theme;
  Color get primary => _primary;
  Color get primaryvariant => _primaryvariant;
  Color get onprimary => _onprimary;
  Color get secondary => _secondary;
  Color get secondaryvariant => _secondaryvariant;
  Color get onsecondary => _onsecondary;
  Color get surface => _surface;
  Color get surfacevariant => _surfacevariant;
  Color get onsurface => _onsurface;
  Color get error => _error;
  Color get errorvariant => _errorvariant;
  Color get onerror => _onerror;


}
