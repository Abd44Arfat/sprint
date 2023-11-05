import 'package:flutter/material.dart';

class AppContext {
  static final navigationKey = GlobalKey<NavigatorState>();

  static BuildContext get context => navigationKey.currentContext!;
}
