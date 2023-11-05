import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../resources/colors_manager.dart';

class CustomLoading {
  static showLoadingView({Color? color}) {
    return Center(
      child: SpinKitCubeGrid(
        color: color ?? AppColors.primaryColor,
        size: 40.0,
      ),
    );
  }
}
