import 'package:flutter/cupertino.dart';
import 'package:hello_dimipay/maps/colors.dart';

enum CustomBoxDecoration {
  widget,
  subWidget,
}

extension CustomBoxDecorationExtention on CustomBoxDecoration {
  BoxDecoration get value {
    switch (this) {
      case CustomBoxDecoration.widget:
        return BoxDecoration(
          color: CustomColor.primaryInverse.value,
          borderRadius: BorderRadius.circular(12),
        );
      case CustomBoxDecoration.subWidget:
        return BoxDecoration(
          color: CustomColor.primary.value,
          borderRadius: BorderRadius.circular(8),
        );
    }
  }
}