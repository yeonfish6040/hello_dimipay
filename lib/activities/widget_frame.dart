import 'package:flutter/material.dart';
import 'package:hello_dimipay/util.dart';
import 'package:hello_dimipay/maps/text_style.dart';


class WidgetFrame extends StatelessWidget {
  final Widget? child;

  const WidgetFrame({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var padding = getHeightByPercent(context, 2);

    return Scaffold(
      body: DefaultTextStyle(
        style: CustomTextStyles.subject.value,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: padding, horizontal: padding),
          child: child,
        ),
      ),
    );
  }
}