import 'package:flutter/material.dart';

double getHeightByPercent(BuildContext context, double ratio) {
  return MediaQuery.of(context).size.height / 100 * ratio;
}
double getWidthByPercent(BuildContext context, double ratio) {
  return MediaQuery.of(context).size.width / 100 * ratio;
}