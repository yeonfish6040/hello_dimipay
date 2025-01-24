import 'package:flutter/material.dart';

enum CustomColor {
  primary,
  primaryInverse,
  button,
  buttonDisabled,
  buttonText,
}

extension CustomColorExtension on CustomColor {
  Color get value {
    switch (this) {
      case CustomColor.primary:
        return const Color(0xFFF8F8F8);
      case CustomColor.primaryInverse:
        return const Color(0xFFFFFFFF);
      case CustomColor.button:
        return const Color(0xFF2EA4AB);
      case CustomColor.buttonDisabled:
        return const Color(0xFFB4B9B9);
      case CustomColor.buttonText:
        return const Color(0xFFFDFEFE);
    }
  }
}