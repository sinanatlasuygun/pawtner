import 'package:flutter/material.dart';
import 'package:pawtner/theme/template.dart';

class ThemeDark extends ThemeTemplate {
  ThemeDark({
    super.themename = 'dark',
    super.surfacetint = '173B45',           
    super.brightness = Brightness.dark,
    super.thememode = ThemeMode.dark,

    super.primary = 'FABC3F',            
    super.primaryvariant = 'E6A300',        
    super.onprimary = '173B45',            
    super.secondary = 'F8EDED',             
    super.secondaryvariant = 'D6D6D6',     
    super.onsecondary = '173B45',           
    super.surface = '173B45',                
    super.surfacevariant = '212F3D',        
    super.onsurface = 'F8EDED',             

    super.error = 'D32F2F',                 
    super.errorvariant = 'B71C1C',         
    super.onerror = 'F8EDED',                
  });
}
