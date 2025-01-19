import 'package:flutter/material.dart';
import 'package:hello_dimipay/maps/colors.dart';

enum CustomTextStyles {
  subject,
  description,
  button,
}

extension CustomTextStyleExtension on CustomTextStyles {
  TextStyle get value {
    switch (this) {
      case CustomTextStyles.subject:
        return TextStyle(
          fontFamily: "Suit",
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        );
      case CustomTextStyles.description:
        return TextStyle(
          fontFamily: "Suit",
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Colors.black54,
        );
      case CustomTextStyles.button:
        return TextStyle(
          fontFamily: "Suit",
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: CustomColor.buttonText.value,
        );
    }
  }
}