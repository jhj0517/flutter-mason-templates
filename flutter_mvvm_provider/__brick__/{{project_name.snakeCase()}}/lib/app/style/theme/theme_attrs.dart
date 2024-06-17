enum ThemeModes{
  light,
  dark
}

// Attribute class for other things instead of colors
abstract class ThemeAttrs {
  ThemeModes get mode;
  String get name;
  IconData get icon;
  ThemeData get colors;
}