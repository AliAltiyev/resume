import 'package:flutter/material.dart';
import 'package:resume/core_ui/theme/theme.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _theme = ThemeData.light();

  ThemeData get theme => _theme;

  void setTheme(ThemeData theme) {
    _theme = theme;
    notifyListeners();
  }
}
