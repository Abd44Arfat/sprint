import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ToastStates { success, error, warning }

extension ToastBGColorX on ToastStates {
  Color color() {
    switch (this) {
      case ToastStates.success:
        return Colors.green;
      case ToastStates.warning:
        return Colors.amber;

      case ToastStates.error:
        return Colors.red;
    }
  }
}

class SimpleToast {
  static void show({
    required String msg,
    Color? color,
    Color? textColor,
    ToastStates state = ToastStates.error,
  }) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: color ?? state.color(),
      textColor: textColor ?? Colors.white,
      fontSize: 16.0,
    );
  }
}
