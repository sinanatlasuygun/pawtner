import 'package:flutter/material.dart';
import 'package:pawtner/theme/template.dart';

class ThemeLight extends ThemeTemplate {
  ThemeLight({
    super.themename = 'light',
    super.surfacetint = 'F8EDED',          
    super.brightness = Brightness.light,
    super.thememode = ThemeMode.light,

    super.primary = 'FABC3F',              
    super.primaryvariant = 'E6A300',       
    super.onprimary = '173B45',           

    super.secondary = '173B45',           
    super.secondaryvariant = 'D6D6D6',     
    super.onsecondary = 'FABC3F',           

    super.surface = 'F8EDED',               
    super.surfacevariant = 'FFF4B8',        
    super.onsurface = '173B45',              

    super.error = 'D32F2F',                 
    super.errorvariant = 'B71C1C',           
    super.onerror = '173B45',                 
  });
}
