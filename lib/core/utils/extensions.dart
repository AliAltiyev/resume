import 'package:flutter/material.dart';

extension Context on BuildContext {
  Color get primaryColor => Theme.of(this).colorScheme.primary;
}
