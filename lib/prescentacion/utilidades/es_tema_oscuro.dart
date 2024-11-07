import 'package:flutter/material.dart';

extension EsTemaOscuro on BuildContext {
  bool get esTemaOscuro {
    return Theme.of(this).brightness == Brightness.dark;
  }
}