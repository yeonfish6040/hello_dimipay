import 'package:flutter/material.dart';

enum CustomColor {
  primary,
}

extension CustomColorExtension on CustomColor {
  Color get value {
    switch (this) {
      case CustomColor.primary:
        return const Color(0xFFF8F8F8);
    }
  }
}