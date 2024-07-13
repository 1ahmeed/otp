import 'package:flutter/cupertino.dart';
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
  static void showErrorDialog(
      {required BuildContext context, required String msg}) {
    showDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: Text(
            msg,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold)),
              child: const Text('Ok'),
            )
          ],
        ));
  }

}