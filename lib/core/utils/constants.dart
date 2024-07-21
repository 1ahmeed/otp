 import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Constants {

  static bool checkArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
  static bool checkDarkMode(context)  {
    var brightness =  Theme.of(context).brightness;
    return brightness == Brightness.dark;
  }


}