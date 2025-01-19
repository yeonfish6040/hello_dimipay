import 'package:flutter/material.dart';

enum CustomTextStyles {
  subject,
  description,
}

extension CustomTextStyleExtension on CustomTextStyles {
  TextStyle get value {
    switch (this) {
      case CustomTextStyles.subject:
        return TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        );
      case CustomTextStyles.description:
        return TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Colors.black54,
        );
    }
  }
}