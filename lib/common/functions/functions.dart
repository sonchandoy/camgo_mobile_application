import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


Size getSize(BuildContext context) {
  return MediaQuery.of(context).size;
}


double getSizeFromScreen(double fullHeight,
    {double adScreenSmall = 12,
      double adScreenBig = 14,
      double iosScreenSmall = 14,
      double iosScreenBig = 16}) {
  if (isAndroid) {
    return fullHeight < 700.0 ? adScreenSmall : adScreenBig;
  } else if (isIos) {
    return fullHeight < 700.0 ? iosScreenSmall : iosScreenBig;
  } else {
    return 14;
  }
}